import '/flutter_flow/flutter_flow_util.dart';
import 'input_currence_computer_widget.dart' show InputCurrenceComputerWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputCurrenceComputerModel
    extends FlutterFlowModel<InputCurrenceComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputCurrenceComputer widget.
  FocusNode? imputCurrenceComputerFocusNode;
  TextEditingController? imputCurrenceComputerTextController;
  late MaskTextInputFormatter imputCurrenceComputerMask;
  String? Function(BuildContext, String?)?
      imputCurrenceComputerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    imputCurrenceComputerFocusNode?.dispose();
    imputCurrenceComputerTextController?.dispose();
  }
}
