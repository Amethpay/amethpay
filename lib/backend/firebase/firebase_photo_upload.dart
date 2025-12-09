import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/backend.dart';

/// Função para fazer upload de foto de perfil com sincronização completa
/// Atualiza Firebase Auth, Firestore e FFAppState
Future<String?> uploadProfilePhoto({
  required File imageFile,
  required String userId,
  required Function(double) onProgress,
}) async {
  try {
    // Validar arquivo
    if (!await imageFile.exists()) {
      throw Exception('Arquivo não existe');
    }

    final fileSize = await imageFile.length();
    if (fileSize > 10 * 1024 * 1024) {
      // Máximo 10MB
      throw Exception('Arquivo muito grande (máximo 10MB)');
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

    // Aguardar conclusão
    await uploadTask;

    // Obter URL de download
    final String downloadUrl = await ref.getDownloadURL();

    // 1. Atualizar Firebase Auth
    final User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      await currentUser.updatePhotoURL(downloadUrl);
      await currentUser.reload();
    }

    // 2. Atualizar Firestore
    await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .update({
      'photoUrl': downloadUrl,
      'photo_url': downloadUrl, // Ambos os nomes para compatibilidade
      'photoUpdatedAt': FieldValue.serverTimestamp(),
    });

    // 3. Atualizar FFAppState
    await FFAppState().setCurrentUserPhoto(downloadUrl);

    return downloadUrl;
  } on FirebaseException catch (e) {
    throw Exception('Erro Firebase: ${e.message}');
  } catch (e) {
    throw Exception('Erro ao fazer upload: $e');
  }
}

/// Função para deletar foto de perfil antiga
Future<void> deleteOldProfilePhoto(String? photoUrl) async {
  if (photoUrl == null || photoUrl.isEmpty) return;

  try {
    // Extrair o caminho do arquivo da URL
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
    // Silenciosamente ignorar erros ao deletar arquivo antigo
    print('Erro ao deletar foto antiga: $e');
  }
}

/// Função para obter foto do usuário atual
Future<String?> getCurrentUserPhotoUrl() async {
  try {
    final User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null) {
      await currentUser.reload();
      return currentUser.photoURL;
    }
    return null;
  } catch (e) {
    print('Erro ao obter foto do usuário: $e');
    return null;
  }
}

/// Função para sincronizar foto com Firestore
Future<void> syncPhotoWithFirestore(String userId) async {
  try {
    final User? currentUser = FirebaseAuth.instance.currentUser;
    if (currentUser != null && currentUser.photoURL != null) {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .update({
        'photoUrl': currentUser.photoURL,
        'photo_url': currentUser.photoURL,
      });
    }
  } catch (e) {
    print('Erro ao sincronizar foto: $e');
  }
}
