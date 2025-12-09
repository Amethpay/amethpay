import '/flutter_flow/flutter_flow_util.dart';
import 'inputtranfercryptobusiness_widget.dart'
    show InputtranfercryptobusinessWidget;
import 'package:flutter/material.dart';

class InputtranfercryptobusinessModel
    extends FlutterFlowModel<InputtranfercryptobusinessWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Inputtranfercryptobusiness widget.
  FocusNode? inputtranfercryptobusinessFocusNode;
  TextEditingController? inputtranfercryptobusinessTextController;
  String? Function(BuildContext, String?)?
      inputtranfercryptobusinessTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputtranfercryptobusinessFocusNode?.dispose();
    inputtranfercryptobusinessTextController?.dispose();
  }
}
