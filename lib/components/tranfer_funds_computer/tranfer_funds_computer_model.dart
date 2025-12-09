import '/flutter_flow/flutter_flow_util.dart';
import 'tranfer_funds_computer_widget.dart' show TranferFundsComputerWidget;
import 'package:flutter/material.dart';

class TranferFundsComputerModel
    extends FlutterFlowModel<TranferFundsComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TranferFundsComputer widget.
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
