import '/flutter_flow/flutter_flow_util.dart';
import 'input_tranfer_funds_business_widget.dart'
    show InputTranferFundsBusinessWidget;
import 'package:flutter/material.dart';

class InputTranferFundsBusinessModel
    extends FlutterFlowModel<InputTranferFundsBusinessWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputTranferFundsBusiness widget.
  FocusNode? inputTranferFundsBusinessFocusNode;
  TextEditingController? inputTranferFundsBusinessTextController;
  String? Function(BuildContext, String?)?
      inputTranferFundsBusinessTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTranferFundsBusinessFocusNode?.dispose();
    inputTranferFundsBusinessTextController?.dispose();
  }
}
