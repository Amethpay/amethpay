import '/flutter_flow/flutter_flow_util.dart';
import 'tranfer_funds_widget.dart' show TranferFundsWidget;
import 'package:flutter/material.dart';

class TranferFundsModel extends FlutterFlowModel<TranferFundsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TranferFunds widget.
  FocusNode? tranferFundsFocusNode;
  TextEditingController? tranferFundsTextController;
  String? Function(BuildContext, String?)? tranferFundsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tranferFundsFocusNode?.dispose();
    tranferFundsTextController?.dispose();
  }
}
