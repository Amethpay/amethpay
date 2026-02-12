import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/backend.dart';
import '../../app_state.dart';

/// Upload de foto de perfil com sincronizacao completa
/// Atualiza Firebase Auth, Firestore e FFAppState
Future<String?> uploadProfilePhoto({
  required File imageFile,
  required String userId,
  required Function(double) onProgress,
}) async {
  try {
    // Validar arquivo
    if (!await imageFile.exists()) {
      throw Exception('Arquivo nao existe');
    }

    final fileSize = await imageFile.length();
    if (fileSize > 10 * 1024 * 1024) {
      throw Exception('Arquivo muito grande (maximo 10MB)');
    }

    // Caminho no Firebase Storage
    final String fileName =
        'profile_pictures/$userId/${DateTime.now().millisecondsSinceEpoch}.jpg';
    final Reference ref = FirebaseStorage.instance.ref().child(fileName);

    // Ler bytes da imagem
    final bytes = await imageFile.readAsBytes();

    // Metadados
    final SettableMetadata metadata = SettableMetadata(
      contentType: 'image/jpeg',
      customMetadata: {
        'uploadedAt': DateTime.now().toIso8601String(),
        'userId': userId,
      },
    );

    // Upload com progresso
    final UploadTask uploadTask = ref.putBytes(bytes, metadata);

    uploadTask.snapshotEvents.listen((TaskSnapshot snapshot) {
      final progress = snapshot.bytesTransferred / snapshot.totalBytes;
      onProgress(progress);
    });

    // Aguardar conclusao
    await uploadTask;

    // Obter URL de download
    final String downloadUrl = await ref.getDownloadURL();

    // 1. Atualizar Firebase Auth
    final User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      try {
        await currentUser.updatePhotoURL(downloadUrl);
        await currentUser.reload();
        print('[Photo] Firebase Auth atualizado: $downloadUrl');
      } catch (e) {
        print('[Photo] Erro ao atualizar Firebase Auth: $e');
      }
    }

    // 2. Atualizar Firestore (somente campo padrao photo_url)
    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .update({
        'photo_url': downloadUrl,
        'photoUpdatedAt': FieldValue.serverTimestamp(),
      });
      print('[Photo] Firestore atualizado: $downloadUrl');
    } catch (e) {
      print('[Photo] Erro ao atualizar Firestore (update): $e');
      // Tentar set em vez de update se documento nao existe
      try {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .set({
          'photo_url': downloadUrl,
          'photoUpdatedAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
        print('[Photo] Firestore atualizado com set/merge: $downloadUrl');
      } catch (e2) {
        print('[Photo] Erro critico ao atualizar Firestore: $e2');
        rethrow;
      }
    }

    // 3. Atualizar FFAppState
    try {
      await FFAppState().setCurrentUserPhoto(downloadUrl);
      print('[Photo] FFAppState atualizado: $downloadUrl');
    } catch (e) {
      print('[Photo] Erro ao atualizar FFAppState: $e');
    }

    // 4. Forcar refresh do usuario atual
    try {
      if (currentUser != null) {
        await currentUser.reload();
        print('[Photo] Usuario recarregado');
      }
    } catch (e) {
      print('[Photo] Erro ao recarregar usuario: $e');
    }

    return downloadUrl;
  } on FirebaseException catch (e) {
    throw Exception('Erro Firebase: ${e.message}');
  } catch (e) {
    throw Exception('Erro ao fazer upload: $e');
  }
}

/// Deletar foto de perfil antiga do Storage
Future<void> deleteOldProfilePhoto(String? photoUrl) async {
  if (photoUrl == null || photoUrl.isEmpty) return;

  try {
    if (photoUrl.contains('profile_pictures/')) {
      final startIndex = photoUrl.indexOf('profile_pictures/');
      final endIndex = photoUrl.indexOf('?');
      final filePath = endIndex > 0
          ? photoUrl.substring(startIndex, endIndex)
          : photoUrl.substring(startIndex);

      final ref = FirebaseStorage.instance.ref().child(filePath);
      await ref.delete();
    }
  } catch (e) {
    print('[Photo] Erro ao deletar foto antiga: $e');
  }
}

/// Obter foto do usuario atual do Firebase Auth
Future<String?> getCurrentUserPhotoUrl() async {
  try {
    final User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      await currentUser.reload();
      return currentUser.photoURL;
    }
    return null;
  } catch (e) {
    print('[Photo] Erro ao obter foto do usuario: $e');
    return null;
  }
}

/// Sincronizar foto do Firebase Auth com Firestore (somente photo_url)
Future<void> syncPhotoWithFirestore(String userId) async {
  try {
    final User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.photoURL != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .update({
        'photo_url': currentUser.photoURL,
      });
    }
  } catch (e) {
    print('[Photo] Erro ao sincronizar foto: $e');
  }
}
