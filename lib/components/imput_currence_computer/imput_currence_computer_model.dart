import '/flutter_flow/flutter_flow_util.dart';
import 'imput_currence_computer_widget.dart' show ImputCurrenceComputerWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class ImputCurrenceComputerModel
    extends FlutterFlowModel<ImputCurrenceComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ImputCurrenceComputer widget.
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
