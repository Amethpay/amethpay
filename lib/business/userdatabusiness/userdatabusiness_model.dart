import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'userdatabusiness_widget.dart' show UserdatabusinessWidget;
import 'package:flutter/material.dart';

class UserdatabusinessModel extends FlutterFlowModel<UserdatabusinessWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  bool isDataUploading_uploadDataS02 = false;
  FFUploadedFile uploadedLocalFile_uploadDataS02 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataS02 = '';

  bool isDataUploading_uploadDataDjc = false;
  FFUploadedFile uploadedLocalFile_uploadDataDjc =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataDjc = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
