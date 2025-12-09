import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'user_profile_avatar_model.dart';
export 'user_profile_avatar_model.dart';

class UserProfileAvatarWidget extends StatefulWidget {
  const UserProfileAvatarWidget({
    super.key,
    this.size = 80.0,
    this.borderWidth = 3.0,
    this.onTap,
  });

  final double? size;
  final double? borderWidth;
  final Future<void> Function()? onTap;

  @override
  State<UserProfileAvatarWidget> createState() =>
      _UserProfileAvatarWidgetState();
}

class _UserProfileAvatarWidgetState extends State<UserProfileAvatarWidget> {
  late UserProfileAvatarModel _model;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserProfileAvatarModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AuthUserStreamWidget(
      builder: (context) => GestureDetector(
        onTap: widget.onTap != null
            ? () async {
                await widget.onTap!();
              }
            : null,
        child: Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
            shape: BoxShape.circle,
            border: Border.all(
              color: FlutterFlowTheme.of(context).primary,
              width: widget.borderWidth ?? 3.0,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(widget.size! / 2),
            child: _buildProfileImage(),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileImage() {
    final String? photoUrl = currentUserPhoto;

    // Se não houver URL de foto, mostrar ícone padrão
    if (photoUrl == null || photoUrl.isEmpty) {
      return Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.person,
          color: Colors.white,
          size: widget.size! * 0.5,
        ),
      );
    }

    // Se houver URL, carregar com cache
    return CachedNetworkImage(
      imageUrl: photoUrl,
      fit: BoxFit.cover,
      fadeInDuration: Duration(milliseconds: 500),
      fadeOutDuration: Duration(milliseconds: 500),
      memCacheHeight: (widget.size! * 2).toInt(),
      memCacheWidth: (widget.size! * 2).toInt(),
      progressIndicatorBuilder: (context, url, downloadProgress) {
        return Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: SizedBox(
              width: widget.size! * 0.4,
              height: widget.size! * 0.4,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                value: downloadProgress.progress,
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          ),
        );
      },
      errorWidget: (context, url, error) {
        return Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryColor,
            shape: BoxShape.circle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person,
                color: Colors.white,
                size: widget.size! * 0.5,
              ),
              SizedBox(height: 4.0),
              Text(
                'Erro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
