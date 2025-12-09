import '/flutter_flow/flutter_flow_util.dart';
import 'imput_currence_widget.dart' show ImputCurrenceWidget;
import 'package:flutter/material.dart';

class ImputCurrenceModel extends FlutterFlowModel<ImputCurrenceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
