import '/flutter_flow/flutter_flow_util.dart';
import 'input_transfer_funds_business_computer_widget.dart'
    show InputTransferFundsBusinessComputerWidget;
import 'package:flutter/material.dart';

class InputTransferFundsBusinessComputerModel
    extends FlutterFlowModel<InputTransferFundsBusinessComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputTransferFundsBusinessComputer widget.
  FocusNode? inputTransferFundsBusinessComputerFocusNode;
  TextEditingController? inputTransferFundsBusinessComputerTextController;
  String? Function(BuildContext, String?)?
      inputTransferFundsBusinessComputerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTransferFundsBusinessComputerFocusNode?.dispose();
    inputTransferFundsBusinessComputerTextController?.dispose();
  }
}
