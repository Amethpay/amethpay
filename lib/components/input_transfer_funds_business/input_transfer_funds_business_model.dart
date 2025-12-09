import '/flutter_flow/flutter_flow_util.dart';
import 'input_transfer_funds_business_widget.dart'
    show InputTransferFundsBusinessWidget;
import 'package:flutter/material.dart';

class InputTransferFundsBusinessModel
    extends FlutterFlowModel<InputTransferFundsBusinessWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputTransferFundsBusiness widget.
  FocusNode? inputTransferFundsBusinessFocusNode;
  TextEditingController? inputTransferFundsBusinessTextController;
  String? Function(BuildContext, String?)?
      inputTransferFundsBusinessTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTransferFundsBusinessFocusNode?.dispose();
    inputTransferFundsBusinessTextController?.dispose();
  }
}
