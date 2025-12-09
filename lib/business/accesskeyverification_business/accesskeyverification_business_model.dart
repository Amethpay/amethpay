import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'accesskeyverification_business_widget.dart'
    show AccesskeyverificationBusinessWidget;
import 'package:flutter/material.dart';

class AccesskeyverificationBusinessModel
    extends FlutterFlowModel<AccesskeyverificationBusinessWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for EnterTheCode widget.
  FocusNode? enterTheCodeFocusNode1;
  TextEditingController? enterTheCodeTextController1;
  String? Function(BuildContext, String?)? enterTheCodeTextController1Validator;
  String? _enterTheCodeTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'nhqiyxy1' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'fo8q7unq' /* Enter a valid email address! */,
      );
    }
    return null;
  }

  // State field(s) for EnterTheCode widget.
  FocusNode? enterTheCodeFocusNode2;
  TextEditingController? enterTheCodeTextController2;
  String? Function(BuildContext, String?)? enterTheCodeTextController2Validator;
  String? _enterTheCodeTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'be7x5un1' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'wmm73bvl' /* Enter a valid email address! */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    enterTheCodeTextController1Validator =
        _enterTheCodeTextController1Validator;
    enterTheCodeTextController2Validator =
        _enterTheCodeTextController2Validator;
  }

  @override
  void dispose() {
    enterTheCodeFocusNode1?.dispose();
    enterTheCodeTextController1?.dispose();

    enterTheCodeFocusNode2?.dispose();
    enterTheCodeTextController2?.dispose();
  }
}
