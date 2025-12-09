import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_funds_widget.dart' show TransferFundsWidget;
import 'package:flutter/material.dart';

class TransferFundsModel extends FlutterFlowModel<TransferFundsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TransferFunds widget.
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
