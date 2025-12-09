import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_account_widget.dart' show RegisterAccountWidget;
import 'package:flutter/material.dart';

class RegisterAccountModel extends FlutterFlowModel<RegisterAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressTextController1;
  String? Function(BuildContext, String?)? emailAddressTextController1Validator;
  String? _emailAddressTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'jfbul9n0' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'bvwcyjtp' /* Enter a valid email address! */,
      );
    }
    return null;
  }

  // State field(s) for password-Create widget.
  FocusNode? passwordCreateFocusNode1;
  TextEditingController? passwordCreateTextController1;
  late bool passwordCreateVisibility1;
  String? Function(BuildContext, String?)?
      passwordCreateTextController1Validator;
  String? _passwordCreateTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7nnfwovl' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'x0puy9qm' /* Enter a password with 6 charac... */,
      );
    }

    return null;
  }

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode1;
  TextEditingController? passwordConfirmTextController1;
  late bool passwordConfirmVisibility1;
  String? Function(BuildContext, String?)?
      passwordConfirmTextController1Validator;
  String? _passwordConfirmTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zt70bwwh' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressTextController2;
  String? Function(BuildContext, String?)? emailAddressTextController2Validator;
  String? _emailAddressTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kn59nebe' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'j8jwvw5a' /* Enter a valid email address! */,
      );
    }
    return null;
  }

  // State field(s) for password-Create widget.
  FocusNode? passwordCreateFocusNode2;
  TextEditingController? passwordCreateTextController2;
  late bool passwordCreateVisibility2;
  String? Function(BuildContext, String?)?
      passwordCreateTextController2Validator;
  String? _passwordCreateTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '9kw15snh' /* Field is required */,
      );
    }

    if (val.length < 6) {
      return FFLocalizations.of(context).getText(
        'hpm3f95d' /* Enter a password with 6 charac... */,
      );
    }

    return null;
  }

  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode2;
  TextEditingController? passwordConfirmTextController2;
  late bool passwordConfirmVisibility2;
  String? Function(BuildContext, String?)?
      passwordConfirmTextController2Validator;
  String? _passwordConfirmTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1usashr4' /* Field is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressTextController1Validator =
        _emailAddressTextController1Validator;
    passwordCreateVisibility1 = false;
    passwordCreateTextController1Validator =
        _passwordCreateTextController1Validator;
    passwordConfirmVisibility1 = false;
    passwordConfirmTextController1Validator =
        _passwordConfirmTextController1Validator;
    emailAddressTextController2Validator =
        _emailAddressTextController2Validator;
    passwordCreateVisibility2 = false;
    passwordCreateTextController2Validator =
        _passwordCreateTextController2Validator;
    passwordConfirmVisibility2 = false;
    passwordConfirmTextController2Validator =
        _passwordConfirmTextController2Validator;
  }

  @override
  void dispose() {
    emailAddressFocusNode1?.dispose();
    emailAddressTextController1?.dispose();

    passwordCreateFocusNode1?.dispose();
    passwordCreateTextController1?.dispose();

    passwordConfirmFocusNode1?.dispose();
    passwordConfirmTextController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressTextController2?.dispose();

    passwordCreateFocusNode2?.dispose();
    passwordCreateTextController2?.dispose();

    passwordConfirmFocusNode2?.dispose();
    passwordConfirmTextController2?.dispose();
  }
}
