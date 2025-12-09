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
        imageQuality: 80,
      );

      if (image == null) {
        setState(() => _isLoading = false);
        return;
      }

      // Upload para Firebase Storage
      final User? currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Usuário não autenticado')),
        );
        setState(() => _isLoading = false);
        return;
      }

      final String fileName =
          'profile_pictures/${currentUser.uid}_${DateTime.now().millisecondsSinceEpoch}.jpg';
      final Reference ref = FirebaseStorage.instance.ref().child(fileName);

      final bytes = await image.readAsBytes();
      await ref.putBytes(bytes);

      final String downloadUrl = await ref.getDownloadURL();

      // Atualizar o perfil do usuário
      await currentUser.updatePhotoURL(downloadUrl);
      await currentUser.reload();

      // Chamar o callback
      if (widget.onPhotoChanged != null) {
        await widget.onPhotoChanged!(downloadUrl);
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Foto de perfil atualizada com sucesso!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao atualizar foto: $e')),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _isLoading ? null : _pickAndUploadImage,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: FlutterFlowTheme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        disabledBackgroundColor: Colors.grey[300],
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
