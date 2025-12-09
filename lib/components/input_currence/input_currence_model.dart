import '/flutter_flow/flutter_flow_util.dart';
import 'input_currence_widget.dart' show InputCurrenceWidget;
import 'package:flutter/material.dart';

class InputCurrenceModel extends FlutterFlowModel<InputCurrenceWidget> {
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
