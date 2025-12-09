import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_crypto_widget.dart' show TransferCryptoWidget;
import 'package:flutter/material.dart';

class TransferCryptoModel extends FlutterFlowModel<TransferCryptoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TransferCrypto widget.
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
