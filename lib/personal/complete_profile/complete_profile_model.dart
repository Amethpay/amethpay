import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'complete_profile_widget.dart' show CompleteProfileWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CompleteProfileModel extends FlutterFlowModel<CompleteProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_uploadData6uu = false;
  FFUploadedFile uploadedLocalFile_uploadData6uu =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData6uu = '';

  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode1;
  TextEditingController? firstNameTextController1;
  String? Function(BuildContext, String?)? firstNameTextController1Validator;
  String? _firstNameTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'llsj7rfu' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'lim5hrre' /* Enter your Name */,
      );
    }
    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode1;
  TextEditingController? lastNameTextController1;
  String? Function(BuildContext, String?)? lastNameTextController1Validator;
  String? _lastNameTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6arrroae' /* Last Name is required */,
      );
    }

    return null;
  }

  // State field(s) for dateofbirth widget.
  FocusNode? dateofbirthFocusNode1;
  TextEditingController? dateofbirthTextController1;
  late MaskTextInputFormatter dateofbirthMask1;
  String? Function(BuildContext, String?)? dateofbirthTextController1Validator;
  String? _dateofbirthTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'n05gknrq' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'xquv5gcj' /* Enter Your Date of Birth */,
      );
    }
    return null;
  }

  // State field(s) for AreaCode widget.
  String? areaCodeValue;
  FormFieldController<String>? areaCodeValueController;
  // State field(s) for Cellphone widget.
  FocusNode? cellphoneFocusNode1;
  TextEditingController? cellphoneTextController1;
  String? Function(BuildContext, String?)? cellphoneTextController1Validator;
  String? _cellphoneTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'o4l46re1' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'zhkv9hf5' /* Enter Your Phone Number */,
      );
    }
    return null;
  }

  // State field(s) for Nationality widget.
  String? nationalityValue;
  FormFieldController<String>? nationalityValueController;
  // State field(s) for Passport widget.
  FocusNode? passportFocusNode1;
  TextEditingController? passportTextController1;
  String? Function(BuildContext, String?)? passportTextController1Validator;
  String? _passportTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'gv07r6rj' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7m5guw0d' /* Enter Your Passport Number */,
      );
    }
    return null;
  }

  // State field(s) for PassportExpirationDate widget.
  FocusNode? passportExpirationDateFocusNode1;
  TextEditingController? passportExpirationDateTextController1;
  late MaskTextInputFormatter passportExpirationDateMask1;
  String? Function(BuildContext, String?)?
      passportExpirationDateTextController1Validator;
  String? _passportExpirationDateTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1kb8acjl' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vzm0bb7q' /* Enter Your Passport Expiration... */,
      );
    }
    return null;
  }

  bool isDataUploading_uploadData2xg = false;
  FFUploadedFile uploadedLocalFile_uploadData2xg =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData2xg = '';

  // State field(s) for Address widget.
  FocusNode? addressFocusNode1;
  TextEditingController? addressTextController1;
  String? Function(BuildContext, String?)? addressTextController1Validator;
  String? _addressTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pfrux6u8' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'em5312dn' /* Enter Your Address */,
      );
    }
    return null;
  }

  // State field(s) for Residencenumber widget.
  FocusNode? residencenumberFocusNode1;
  TextEditingController? residencenumberTextController1;
  String? Function(BuildContext, String?)?
      residencenumberTextController1Validator;
  String? _residencenumberTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5m03f20r' /* Field is required */,
      );
    }

    return null;
  }

  // State field(s) for City widget.
  FocusNode? cityFocusNode1;
  TextEditingController? cityTextController1;
  String? Function(BuildContext, String?)? cityTextController1Validator;
  String? _cityTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'uqeohqpp' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vd7hzvsr' /* Enter Your City */,
      );
    }
    return null;
  }

  // State field(s) for Country widget.
  String? countryValue1;
  FormFieldController<String>? countryValueController1;
  // State field(s) for ZIPCode widget.
  FocusNode? zIPCodeFocusNode1;
  TextEditingController? zIPCodeTextController1;
  String? Function(BuildContext, String?)? zIPCodeTextController1Validator;
  String? _zIPCodeTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'glopistw' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'zlsqqmvr' /* Enter Your Zip Code */,
      );
    }
    return null;
  }

  bool isDataUploading_uploadDataAfu = false;
  FFUploadedFile uploadedLocalFile_uploadDataAfu =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataAfu = '';

  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode2;
  TextEditingController? firstNameTextController2;
  String? Function(BuildContext, String?)? firstNameTextController2Validator;
  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode2;
  TextEditingController? lastNameTextController2;
  String? Function(BuildContext, String?)? lastNameTextController2Validator;
  // State field(s) for dateofbirth widget.
  FocusNode? dateofbirthFocusNode2;
  TextEditingController? dateofbirthTextController2;
  late MaskTextInputFormatter dateofbirthMask2;
  String? Function(BuildContext, String?)? dateofbirthTextController2Validator;
  // State field(s) for Nationalit widget.
  String? nationalitValue1;
  FormFieldController<String>? nationalitValueController1;
  // State field(s) for Cellphone widget.
  FocusNode? cellphoneFocusNode2;
  TextEditingController? cellphoneTextController2;
  String? Function(BuildContext, String?)? cellphoneTextController2Validator;
  // State field(s) for Nationalit widget.
  String? nationalitValue2;
  FormFieldController<String>? nationalitValueController2;
  // State field(s) for Passport widget.
  FocusNode? passportFocusNode2;
  TextEditingController? passportTextController2;
  String? Function(BuildContext, String?)? passportTextController2Validator;
  // State field(s) for PassportExpirationDate widget.
  FocusNode? passportExpirationDateFocusNode2;
  TextEditingController? passportExpirationDateTextController2;
  late MaskTextInputFormatter passportExpirationDateMask2;
  String? Function(BuildContext, String?)?
      passportExpirationDateTextController2Validator;
  bool isDataUploading_uploadDataPvb = false;
  FFUploadedFile uploadedLocalFile_uploadDataPvb =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataPvb = '';

  // State field(s) for Address widget.
  FocusNode? addressFocusNode2;
  TextEditingController? addressTextController2;
  String? Function(BuildContext, String?)? addressTextController2Validator;
  // State field(s) for Residencenumber widget.
  FocusNode? residencenumberFocusNode2;
  TextEditingController? residencenumberTextController2;
  String? Function(BuildContext, String?)?
      residencenumberTextController2Validator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode2;
  TextEditingController? cityTextController2;
  String? Function(BuildContext, String?)? cityTextController2Validator;
  // State field(s) for Country widget.
  String? countryValue2;
  FormFieldController<String>? countryValueController2;
  // State field(s) for ZIPCode widget.
  FocusNode? zIPCodeFocusNode2;
  TextEditingController? zIPCodeTextController2;
  String? Function(BuildContext, String?)? zIPCodeTextController2Validator;

  @override
  void initState(BuildContext context) {
    firstNameTextController1Validator = _firstNameTextController1Validator;
    lastNameTextController1Validator = _lastNameTextController1Validator;
    dateofbirthTextController1Validator = _dateofbirthTextController1Validator;
    cellphoneTextController1Validator = _cellphoneTextController1Validator;
    passportTextController1Validator = _passportTextController1Validator;
    passportExpirationDateTextController1Validator =
        _passportExpirationDateTextController1Validator;
    addressTextController1Validator = _addressTextController1Validator;
    residencenumberTextController1Validator =
        _residencenumberTextController1Validator;
    cityTextController1Validator = _cityTextController1Validator;
    zIPCodeTextController1Validator = _zIPCodeTextController1Validator;
  }

  @override
  void dispose() {
    firstNameFocusNode1?.dispose();
    firstNameTextController1?.dispose();

    lastNameFocusNode1?.dispose();
    lastNameTextController1?.dispose();

    dateofbirthFocusNode1?.dispose();
    dateofbirthTextController1?.dispose();

    cellphoneFocusNode1?.dispose();
    cellphoneTextController1?.dispose();

    passportFocusNode1?.dispose();
    passportTextController1?.dispose();

    passportExpirationDateFocusNode1?.dispose();
    passportExpirationDateTextController1?.dispose();

    addressFocusNode1?.dispose();
    addressTextController1?.dispose();

    residencenumberFocusNode1?.dispose();
    residencenumberTextController1?.dispose();

    cityFocusNode1?.dispose();
    cityTextController1?.dispose();

    zIPCodeFocusNode1?.dispose();
    zIPCodeTextController1?.dispose();

    firstNameFocusNode2?.dispose();
    firstNameTextController2?.dispose();

    lastNameFocusNode2?.dispose();
    lastNameTextController2?.dispose();

    dateofbirthFocusNode2?.dispose();
    dateofbirthTextController2?.dispose();

    cellphoneFocusNode2?.dispose();
    cellphoneTextController2?.dispose();

    passportFocusNode2?.dispose();
    passportTextController2?.dispose();

    passportExpirationDateFocusNode2?.dispose();
    passportExpirationDateTextController2?.dispose();

    addressFocusNode2?.dispose();
    addressTextController2?.dispose();

    residencenumberFocusNode2?.dispose();
    residencenumberTextController2?.dispose();

    cityFocusNode2?.dispose();
    cityTextController2?.dispose();

    zIPCodeFocusNode2?.dispose();
    zIPCodeTextController2?.dispose();
  }
}
