import '/flutter_flow/flutter_flow_util.dart';
import 'input_tranfer_funds_business_computer_widget.dart'
    show InputTranferFundsBusinessComputerWidget;
import 'package:flutter/material.dart';

class InputTranferFundsBusinessComputerModel
    extends FlutterFlowModel<InputTranferFundsBusinessComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputTranferFundsBusinessComputer widget.
  FocusNode? inputTranferFundsBusinessComputerFocusNode;
  TextEditingController? inputTranferFundsBusinessComputerTextController;
  String? Function(BuildContext, String?)?
      inputTranferFundsBusinessComputerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTranferFundsBusinessComputerFocusNode?.dispose();
    inputTranferFundsBusinessComputerTextController?.dispose();
  }
}
