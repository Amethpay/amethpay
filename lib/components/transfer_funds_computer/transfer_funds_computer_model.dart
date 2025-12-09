import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_funds_computer_widget.dart' show TransferFundsComputerWidget;
import 'package:flutter/material.dart';

class TransferFundsComputerModel
    extends FlutterFlowModel<TransferFundsComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TransferFundsComputer widget.
  FocusNode? tranferFundsComputerFocusNode;
  TextEditingController? tranferFundsComputerTextController;
  String? Function(BuildContext, String?)?
      tranferFundsComputerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tranferFundsComputerFocusNode?.dispose();
    tranferFundsComputerTextController?.dispose();
  }
}
