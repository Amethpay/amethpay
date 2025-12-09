import '/flutter_flow/flutter_flow_util.dart';
import 'tranfer_crypto_computer_widget.dart' show TranferCryptoComputerWidget;
import 'package:flutter/material.dart';

class TranferCryptoComputerModel
    extends FlutterFlowModel<TranferCryptoComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TranferCryptoComputer widget.
  FocusNode? tranferCryptoComputerFocusNode;
  TextEditingController? tranferCryptoComputerTextController;
  String? Function(BuildContext, String?)?
      tranferCryptoComputerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tranferCryptoComputerFocusNode?.dispose();
    tranferCryptoComputerTextController?.dispose();
  }
}
