import '/flutter_flow/flutter_flow_util.dart';
import 'input_transfer_crypto_business_computer_widget.dart'
    show InputTransferCryptoBusinessComputerWidget;
import 'package:flutter/material.dart';

class InputTransferCryptoBusinessComputerModel
    extends FlutterFlowModel<InputTransferCryptoBusinessComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputTransferCryptoBusinessComputer widget.
  FocusNode? inputTransferCryptoBusinessComputerFocusNode;
  TextEditingController? inputTransferCryptoBusinessComputerTextController;
  String? Function(BuildContext, String?)?
      inputTransferCryptoBusinessComputerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTransferCryptoBusinessComputerFocusNode?.dispose();
    inputTransferCryptoBusinessComputerTextController?.dispose();
  }
}
