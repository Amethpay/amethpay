import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'change_passwordexit_business_widget.dart'
    show ChangePasswordexitBusinessWidget;
import 'package:flutter/material.dart';

class ChangePasswordexitBusinessModel
    extends FlutterFlowModel<ChangePasswordexitBusinessWidget> {
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
        'rwtalpgn' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7syjqg8j' /* Enter a valid email address! */,
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
        'ucl3qi3p' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'p1fc5egf' /* Enter a valid email address! */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressTextController1Validator =
        _emailAddressTextController1Validator;
    emailAddressTextController2Validator =
        _emailAddressTextController2Validator;
  }

  @override
  void dispose() {
    emailAddressFocusNode1?.dispose();
    emailAddressTextController1?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressTextController2?.dispose();
  }
}
