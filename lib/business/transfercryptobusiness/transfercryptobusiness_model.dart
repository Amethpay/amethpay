import '/components/input_tranfer_crypto_business_computer/input_tranfer_crypto_business_computer_widget.dart';
import '/components/inputtranfercryptobusiness/inputtranfercryptobusiness_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'transfercryptobusiness_widget.dart' show TransfercryptobusinessWidget;
import 'package:flutter/material.dart';

class TransfercryptobusinessModel
    extends FlutterFlowModel<TransfercryptobusinessWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 0;

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'd9ddnu5r' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '358kiigg' /* Field is required */,
      );
    }

    return null;
  }

  // Model for InputTranferCryptoBusinessComputer component.
  late InputTranferCryptoBusinessComputerModel
      inputTranferCryptoBusinessComputerModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 0;

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'by8tjjlw' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  String? _textController4Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bs1t39vx' /* Field is required */,
      );
    }

    return null;
  }

  // Model for Inputtranfercryptobusiness component.
  late InputtranfercryptobusinessModel inputtranfercryptobusinessModel;

  @override
  void initState(BuildContext context) {
    textController1Validator = _textController1Validator;
    textController2Validator = _textController2Validator;
    inputTranferCryptoBusinessComputerModel =
        createModel(context, () => InputTranferCryptoBusinessComputerModel());
    textController3Validator = _textController3Validator;
    textController4Validator = _textController4Validator;
    inputtranfercryptobusinessModel =
        createModel(context, () => InputtranfercryptobusinessModel());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    inputTranferCryptoBusinessComputerModel.dispose();
    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    inputtranfercryptobusinessModel.dispose();
  }
}
