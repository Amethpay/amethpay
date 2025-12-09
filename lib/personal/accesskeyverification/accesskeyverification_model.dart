import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'accesskeyverification_widget.dart' show AccesskeyverificationWidget;
import 'package:flutter/material.dart';

class AccesskeyverificationModel
    extends FlutterFlowModel<AccesskeyverificationWidget> {
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
        'gw54l19b' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'k5h980zi' /* Enter a valid email address! */,
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
        'vrhzko88' /* Field is required */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '5096h0n7' /* Enter a valid email address! */,
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
