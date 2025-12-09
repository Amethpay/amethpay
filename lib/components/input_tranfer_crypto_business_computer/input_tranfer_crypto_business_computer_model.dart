import '/flutter_flow/flutter_flow_util.dart';
import 'input_tranfer_crypto_business_computer_widget.dart'
    show InputTranferCryptoBusinessComputerWidget;
import 'package:flutter/material.dart';

class InputTranferCryptoBusinessComputerModel
    extends FlutterFlowModel<InputTranferCryptoBusinessComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputTranferCryptoBusinessComputer widget.
  FocusNode? inputTranferCryptoBusinessComputerFocusNode;
  TextEditingController? inputTranferCryptoBusinessComputerTextController;
  String? Function(BuildContext, String?)?
      inputTranferCryptoBusinessComputerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputTranferCryptoBusinessComputerFocusNode?.dispose();
    inputTranferCryptoBusinessComputerTextController?.dispose();
  }
}
