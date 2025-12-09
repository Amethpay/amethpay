import '/flutter_flow/flutter_flow_util.dart';
import 'input_currency_exchange_computer_widget.dart'
    show InputCurrencyExchangeComputerWidget;
import 'package:flutter/material.dart';

class InputCurrencyExchangeComputerModel
    extends FlutterFlowModel<InputCurrencyExchangeComputerWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputCurrencyExchangeComputer widget.
  FocusNode? inputCurrencyExchangeComputerFocusNode;
  TextEditingController? inputCurrencyExchangeComputerTextController;
  String? Function(BuildContext, String?)?
      inputCurrencyExchangeComputerTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputCurrencyExchangeComputerFocusNode?.dispose();
    inputCurrencyExchangeComputerTextController?.dispose();
  }
}
