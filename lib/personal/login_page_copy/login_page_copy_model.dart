import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_page_copy_widget.dart' show LoginPageCopyWidget;
import 'package:flutter/material.dart';

class LoginPageCopyModel extends FlutterFlowModel<LoginPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for emailAddress-login widget.
  FocusNode? emailAddressLoginFocusNode1;
  TextEditingController? emailAddressLoginTextController1;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextController1Validator;
  String? _emailAddressLoginTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'phptqqf6' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'j5qp2kwv' /* Enter a valid email address! */,
      );
    }
    return null;
  }

  // State field(s) for password-login widget.
  FocusNode? passwordLoginFocusNode1;
  TextEditingController? passwordLoginTextController1;
  late bool passwordLoginVisibility1;
  String? Function(BuildContext, String?)?
      passwordLoginTextController1Validator;
  String? _passwordLoginTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'vfvbohbg' /* Field is required */,
      );
    }

    return null;
  }

  bool bioverification = false;
  // State field(s) for emailAddress-login widget.
  FocusNode? emailAddressLoginFocusNode2;
  TextEditingController? emailAddressLoginTextController2;
  String? Function(BuildContext, String?)?
      emailAddressLoginTextController2Validator;
  String? _emailAddressLoginTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tts79a8k' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'futx9fc6' /* Enter a valid email address! */,
      );
    }
    return null;
  }

  // State field(s) for password-login widget.
  FocusNode? passwordLoginFocusNode2;
  TextEditingController? passwordLoginTextController2;
  late bool passwordLoginVisibility2;
  String? Function(BuildContext, String?)?
      passwordLoginTextController2Validator;
  String? _passwordLoginTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rk3futrz' /* Field is required */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressLoginTextController1Validator =
        _emailAddressLoginTextController1Validator;
    passwordLoginVisibility1 = false;
    passwordLoginTextController1Validator =
        _passwordLoginTextController1Validator;
    emailAddressLoginTextController2Validator =
        _emailAddressLoginTextController2Validator;
    passwordLoginVisibility2 = false;
    passwordLoginTextController2Validator =
        _passwordLoginTextController2Validator;
  }

  @override
  void dispose() {
    emailAddressLoginFocusNode1?.dispose();
    emailAddressLoginTextController1?.dispose();

    passwordLoginFocusNode1?.dispose();
    passwordLoginTextController1?.dispose();

    emailAddressLoginFocusNode2?.dispose();
    emailAddressLoginTextController2?.dispose();

    passwordLoginFocusNode2?.dispose();
    passwordLoginTextController2?.dispose();
  }
}
