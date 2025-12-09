import '/flutter_flow/flutter_flow_util.dart';
import 'transfer_crypto_computer_widget.dart' show TransferCryptoComputerWidget;
import 'package:flutter/material.dart';

class TransferCryptoComputerModel
    extends FlutterFlowModel<TransferCryptoComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TransferCryptoComputer widget.
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
