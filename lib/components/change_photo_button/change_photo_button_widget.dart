import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'change_photo_button_model.dart';
export 'change_photo_button_model.dart';

class ChangePhotoButtonWidget extends StatefulWidget {
  const ChangePhotoButtonWidget({
    super.key,
    this.onPhotoChanged,
  });

  final Future<void> Function(String)? onPhotoChanged;

  @override
  State<ChangePhotoButtonWidget> createState() =>
      _ChangePhotoButtonWidgetState();
}

class _ChangePhotoButtonWidgetState extends State<ChangePhotoButtonWidget> {
  late ChangePhotoButtonModel _model;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePhotoButtonModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  Future<void> _pickAndUploadImage() async {
    try {
      setState(() => _isLoading = true);

      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxHeight: 1024,
        maxWidth: 1024,
      );

      if (image == null) {
        setState(() => _isLoading = false);
        return;
      }

      // Obter usuário atual
      final User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Usuário não autenticado'),
              backgroundColor: Colors.red,
            ),
          );
        }
        setState(() => _isLoading = false);
        return;
      }

      // Criar nome único para a imagem
      final String fileName =
          'profile_pictures/${currentUser.uid}_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final Reference ref = FirebaseStorage.instance.ref().child(fileName);

      // Ler bytes da imagem
      final bytes = await image.readAsBytes();

      // Upload com metadados
      final SettableMetadata metadata = SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {
          'uploadedAt': DateTime.now().toIso8601String(),
          'userId': currentUser.uid,
        },
      );

      await ref.putBytes(bytes, metadata);

      // Obter URL de download
      final String downloadUrl = await ref.getDownloadURL();

      // Atualizar foto do usuário no Firebase Auth
      await currentUser.updatePhotoURL(downloadUrl);
      
      // Recarregar dados do usuário
      await currentUser.reload();

      // Forçar refresh do usuário autenticado
      await FFAppState().setCurrentUserPhoto(downloadUrl);

      // Chamar callback se fornecido
      if (widget.onPhotoChanged != null) {
        await widget.onPhotoChanged!(downloadUrl);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Foto de perfil atualizada com sucesso!'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 2),
          ),
        );
      }
    } on FirebaseException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erro do Firebase: ${e.message}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Erro ao atualizar foto: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isLoading ? null : _pickAndUploadImage,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: FlutterFlowTheme.of(context).primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        disabledBackgroundColor: Colors.grey[300],
        elevation: 2.0,
      ),
      child: _isLoading
          ? SizedBox(
              height: 20.0,
              width: 20.0,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primaryColor,
                ),
              ),
            )
          : Text(
              'Change Photo',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
    );
  }
}
