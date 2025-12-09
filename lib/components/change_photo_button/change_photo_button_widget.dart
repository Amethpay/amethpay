import '/auth/firebase_auth/auth_util.dart';
import '/backend/firebase/firebase_photo_upload.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
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
  double _uploadProgress = 0.0;

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

      // Usar image_picker para selecionar imagem
      final ImagePicker picker = ImagePicker();
      final XFile? pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxHeight: 1024,
        maxWidth: 1024,
      );

      if (pickedFile == null) {
        setState(() => _isLoading = false);
        return;
      }

      // Converter para File
      final File imageFile = File(pickedFile.path);

      // Obter usuário atual
      final currentUser = currentUserReference;
      if (currentUser == null) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Usuário não autenticado'),
              backgroundColor: Colors.red,
              duration: Duration(seconds: 3),
            ),
          );
        }
        setState(() => _isLoading = false);
        return;
      }

      // Fazer upload com função customizada
      final String? downloadUrl = await uploadProfilePhoto(
        imageFile: imageFile,
        userId: currentUser.id,
        onProgress: (progress) {
          if (mounted) {
            setState(() => _uploadProgress = progress);
          }
        },
      );

      if (downloadUrl == null || downloadUrl.isEmpty) {
        throw Exception('Falha ao obter URL de download');
      }

      // Chamar callback
      if (widget.onPhotoChanged != null) {
        await widget.onPhotoChanged!(downloadUrl);
      }

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('✅ Foto de perfil atualizada com sucesso!'),
            backgroundColor: Colors.green,
            duration: Duration(seconds: 3),
          ),
        );

        // Forçar rebuild para atualizar a imagem
        safeSetState(() {});
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('❌ Erro: $e'),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 4),
          ),
        );
      }
      print('Erro ao fazer upload de foto: $e');
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
          _uploadProgress = 0.0;
        });
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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircularProgressIndicator(
                    strokeWidth: 2.0,
                    value: _uploadProgress,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    '${(_uploadProgress * 100).toStringAsFixed(0)}%',
                    style: TextStyle(
                      fontSize: 8.0,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
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
