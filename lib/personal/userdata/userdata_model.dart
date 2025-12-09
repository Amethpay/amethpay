import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'userdata_widget.dart' show UserdataWidget;
import 'package:flutter/material.dart';

class UserdataModel extends FlutterFlowModel<UserdataWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  bool isDataUploading_uploadDataZsc = false;
  FFUploadedFile uploadedLocalFile_uploadDataZsc =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataZsc = '';

  bool isDataUploading_uploadDataI7y = false;
  FFUploadedFile uploadedLocalFile_uploadDataI7y =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataI7y = '';

  // Stores action output result for [Backend Call - Read Document] action in Button-Login widget.
  UsersRecord? authenticatedUser;
  bool isDataUploading_uploadData1q0 = false;
  FFUploadedFile uploadedLocalFile_uploadData1q0 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData1q0 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
