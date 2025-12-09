import '/flutter_flow/flutter_flow_util.dart';
import 'tranfer_crypto_widget.dart' show TranferCryptoWidget;
import 'package:flutter/material.dart';

class TranferCryptoModel extends FlutterFlowModel<TranferCryptoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TranferCrypto widget.
  FocusNode? tranferCryptoFocusNode;
  TextEditingController? tranferCryptoTextController;
  String? Function(BuildContext, String?)? tranferCryptoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tranferCryptoFocusNode?.dispose();
    tranferCryptoTextController?.dispose();
  }
}
