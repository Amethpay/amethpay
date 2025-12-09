import '/components/input_currence/input_currence_widget.dart';
import '/components/input_currence_computer/input_currence_computer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'exchange_widget.dart' show ExchangeWidget;
import 'package:flutter/material.dart';

class ExchangeModel extends FlutterFlowModel<ExchangeWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for InputCurrence component.
  late InputCurrenceModel imputCurrenceModel;
  // State field(s) for DropDown widget.
  String? dropDownValue3;
  FormFieldController<String>? dropDownValueController3;
  // State field(s) for DropDown widget.
  String? dropDownValue4;
  FormFieldController<String>? dropDownValueController4;
  // Model for InputCurrenceComputer component.
  late InputCurrenceComputerModel imputCurrenceComputerModel;

  @override
  void initState(BuildContext context) {
    imputCurrenceModel = createModel(context, () => InputCurrenceModel());
    imputCurrenceComputerModel =
        createModel(context, () => InputCurrenceComputerModel());
  }

  @override
  void dispose() {
    imputCurrenceModel.dispose();
    imputCurrenceComputerModel.dispose();
  }
}
