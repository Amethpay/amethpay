import '/flutter_flow/flutter_flow_util.dart';
import 'input_currency_exchange_widget.dart' show InputCurrencyExchangeWidget;
import 'package:flutter/material.dart';

class InputCurrencyExchangeModel
    extends FlutterFlowModel<InputCurrencyExchangeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for InputCurrencyExchange widget.
  FocusNode? inputCurrencyExchangeFocusNode;
  TextEditingController? inputCurrencyExchangeTextController;
  String? Function(BuildContext, String?)?
      inputCurrencyExchangeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputCurrencyExchangeFocusNode?.dispose();
    inputCurrencyExchangeTextController?.dispose();
  }
}
