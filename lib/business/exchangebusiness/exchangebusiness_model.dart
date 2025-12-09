import '/components/input_currency_exchange/input_currency_exchange_widget.dart';
import '/components/input_currency_exchange_computer/input_currency_exchange_computer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'exchangebusiness_widget.dart' show ExchangebusinessWidget;
import 'package:flutter/material.dart';

class ExchangebusinessModel extends FlutterFlowModel<ExchangebusinessWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for InputCurrencyExchange component.
  late InputCurrencyExchangeModel inputCurrencyExchangeModel;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Model for InputCurrencyExchangeComputer component.
  late InputCurrencyExchangeComputerModel inputCurrencyExchangeComputerModel;

  @override
  void initState(BuildContext context) {
    inputCurrencyExchangeModel =
        createModel(context, () => InputCurrencyExchangeModel());
    inputCurrencyExchangeComputerModel =
        createModel(context, () => InputCurrencyExchangeComputerModel());
  }

  @override
  void dispose() {
    inputCurrencyExchangeModel.dispose();
    inputCurrencyExchangeComputerModel.dispose();
  }
}
