import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'complete_profilebusiness_widget.dart' show CompleteProfilebusinessWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CompleteProfilebusinessModel
    extends FlutterFlowModel<CompleteProfilebusinessWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  bool isDataUploading_uploadData0w0 = false;
  FFUploadedFile uploadedLocalFile_uploadData0w0 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData0w0 = '';

  // State field(s) for CompanyName widget.
  FocusNode? companyNameFocusNode1;
  TextEditingController? companyNameTextController1;
  String? Function(BuildContext, String?)? companyNameTextController1Validator;
  String? _companyNameTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'pd03qvkv' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'vcg9rdr2' /* Enter a valid date! */,
      );
    }
    return null;
  }

  // State field(s) for CompanyRegistrationNumber widget.
  FocusNode? companyRegistrationNumberFocusNode1;
  TextEditingController? companyRegistrationNumberTextController1;
  String? Function(BuildContext, String?)?
      companyRegistrationNumberTextController1Validator;
  String? _companyRegistrationNumberTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7sl89mlh' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'clq6s9c4' /* Enter a Valid Registration Num... */,
      );
    }
    return null;
  }

  bool isDataUploading_uploadData2wb = false;
  FFUploadedFile uploadedLocalFile_uploadData2wb =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData2wb = '';

  // State field(s) for CompanysAdress widget.
  FocusNode? companysAdressFocusNode1;
  TextEditingController? companysAdressTextController1;
  String? Function(BuildContext, String?)?
      companysAdressTextController1Validator;
  String? _companysAdressTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'hjodxpf4' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '7iiwrrgj' /* Enter a valid address! */,
      );
    }
    return null;
  }

  // State field(s) for CompanyAddressNumber widget.
  FocusNode? companyAddressNumberFocusNode1;
  TextEditingController? companyAddressNumberTextController1;
  String? Function(BuildContext, String?)?
      companyAddressNumberTextController1Validator;
  String? _companyAddressNumberTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'doca6i22' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for CityofYourCompany widget.
  FocusNode? cityofYourCompanyFocusNode1;
  TextEditingController? cityofYourCompanyTextController1;
  String? Function(BuildContext, String?)?
      cityofYourCompanyTextController1Validator;
  String? _cityofYourCompanyTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rpvlfdqf' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'p1d0xd98' /* Enter a valid city! */,
      );
    }
    return null;
  }

  // State field(s) for CountryofYourCompany widget.
  String? countryofYourCompanyValue1;
  FormFieldController<String>? countryofYourCompanyValueController1;
  // State field(s) for CompanyZipCode widget.
  FocusNode? companyZipCodeFocusNode1;
  TextEditingController? companyZipCodeTextController1;
  String? Function(BuildContext, String?)?
      companyZipCodeTextController1Validator;
  String? _companyZipCodeTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'tj5y571h' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'q4rmz8az' /* Enter a valid zip code! */,
      );
    }
    return null;
  }

  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode1;
  TextEditingController? firstNameTextController1;
  String? Function(BuildContext, String?)? firstNameTextController1Validator;
  String? _firstNameTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '289o08j9' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '09lfh3bi' /* Enter a Valid Name */,
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
        '173pih5f' /* Last Name is required */,
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
        'ym82fhby' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'kq0ev2qk' /* Enter Your Date of Birth */,
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
        'prxcz1hs' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'm627mk19' /* Enter a valid cell phone numbe... */,
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
        '6sxgeeoy' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ihr4pc53' /* Enter a valid passport number! */,
      );
    }
    return null;
  }

  bool isDataUploading_uploadData7c9 = false;
  FFUploadedFile uploadedLocalFile_uploadData7c9 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadData7c9 = '';

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
        'bgw7eqg2' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '9l7k9hr7' /* enter a valid date! */,
      );
    }
    return null;
  }

  bool isDataUploading_uploadDataRkh = false;
  FFUploadedFile uploadedLocalFile_uploadDataRkh =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataRkh = '';

  // State field(s) for CompanyName widget.
  FocusNode? companyNameFocusNode2;
  TextEditingController? companyNameTextController2;
  String? Function(BuildContext, String?)? companyNameTextController2Validator;
  String? _companyNameTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ztg0cxnu' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '9xeiy3ap' /* Enter a valid date! */,
      );
    }
    return null;
  }

  // State field(s) for CompanyRegistrationNumber widget.
  FocusNode? companyRegistrationNumberFocusNode2;
  TextEditingController? companyRegistrationNumberTextController2;
  String? Function(BuildContext, String?)?
      companyRegistrationNumberTextController2Validator;
  String? _companyRegistrationNumberTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'k6rw8v82' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '9u8wseem' /* Enter a Valid Registration Num... */,
      );
    }
    return null;
  }

  bool isDataUploading_uploadDataY9o = false;
  FFUploadedFile uploadedLocalFile_uploadDataY9o =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataY9o = '';

  // State field(s) for CompanysAdress widget.
  FocusNode? companysAdressFocusNode2;
  TextEditingController? companysAdressTextController2;
  String? Function(BuildContext, String?)?
      companysAdressTextController2Validator;
  String? _companysAdressTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zt4k3jku' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '21vntykl' /* Enter a valid address! */,
      );
    }
    return null;
  }

  // State field(s) for CompanyAddressNumber widget.
  FocusNode? companyAddressNumberFocusNode2;
  TextEditingController? companyAddressNumberTextController2;
  String? Function(BuildContext, String?)?
      companyAddressNumberTextController2Validator;
  // State field(s) for CityofYourCompany widget.
  FocusNode? cityofYourCompanyFocusNode2;
  TextEditingController? cityofYourCompanyTextController2;
  String? Function(BuildContext, String?)?
      cityofYourCompanyTextController2Validator;
  String? _cityofYourCompanyTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'h99ohf3x' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'tlline1c' /* Enter a valid city! */,
      );
    }
    return null;
  }

  // State field(s) for CountryofYourCompany widget.
  String? countryofYourCompanyValue2;
  FormFieldController<String>? countryofYourCompanyValueController2;
  // State field(s) for CompanyZipCode widget.
  FocusNode? companyZipCodeFocusNode2;
  TextEditingController? companyZipCodeTextController2;
  String? Function(BuildContext, String?)?
      companyZipCodeTextController2Validator;
  String? _companyZipCodeTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1b3odqp5' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'jheu0o11' /* Enter a valid zip code! */,
      );
    }
    return null;
  }

  // State field(s) for FirstName widget.
  FocusNode? firstNameFocusNode2;
  TextEditingController? firstNameTextController2;
  String? Function(BuildContext, String?)? firstNameTextController2Validator;
  String? _firstNameTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'zfphihgu' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '6v87dxzn' /* Enter a Valid Name */,
      );
    }
    return null;
  }

  // State field(s) for LastName widget.
  FocusNode? lastNameFocusNode2;
  TextEditingController? lastNameTextController2;
  String? Function(BuildContext, String?)? lastNameTextController2Validator;
  // State field(s) for dateofbirth widget.
  FocusNode? dateofbirthFocusNode2;
  TextEditingController? dateofbirthTextController2;
  late MaskTextInputFormatter dateofbirthMask2;
  String? Function(BuildContext, String?)? dateofbirthTextController2Validator;
  String? _dateofbirthTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fsve5ai0' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'j39pn9u1' /* Enter Your Date of Birth */,
      );
    }
    return null;
  }

  // State field(s) for Nationalit widget.
  String? nationalitValue1;
  FormFieldController<String>? nationalitValueController1;
  // State field(s) for Cellphone widget.
  FocusNode? cellphoneFocusNode2;
  TextEditingController? cellphoneTextController2;
  String? Function(BuildContext, String?)? cellphoneTextController2Validator;
  String? _cellphoneTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'a496naa5' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '3i0629qd' /* Enter a valid cell phone numbe... */,
      );
    }
    return null;
  }

  // State field(s) for Nationalit widget.
  String? nationalitValue2;
  FormFieldController<String>? nationalitValueController2;
  // State field(s) for Passport widget.
  FocusNode? passportFocusNode2;
  TextEditingController? passportTextController2;
  String? Function(BuildContext, String?)? passportTextController2Validator;
  String? _passportTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'k1k9rgmb' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        't2r1mabm' /* Enter a valid passport number! */,
      );
    }
    return null;
  }

  bool isDataUploading_copyofpassportbusiness = false;
  FFUploadedFile uploadedLocalFile_copyofpassportbusiness =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_copyofpassportbusiness = '';

  // State field(s) for PassportExpirationDate widget.
  FocusNode? passportExpirationDateFocusNode2;
  TextEditingController? passportExpirationDateTextController2;
  late MaskTextInputFormatter passportExpirationDateMask2;
  String? Function(BuildContext, String?)?
      passportExpirationDateTextController2Validator;
  String? _passportExpirationDateTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        's1cbjt6o' /* Field is required */,
      );
    }

    if (!RegExp('').hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'h12ol4tn' /* enter a valid date! */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    companyNameTextController1Validator = _companyNameTextController1Validator;
    companyRegistrationNumberTextController1Validator =
        _companyRegistrationNumberTextController1Validator;
    companysAdressTextController1Validator =
        _companysAdressTextController1Validator;
    companyAddressNumberTextController1Validator =
        _companyAddressNumberTextController1Validator;
    cityofYourCompanyTextController1Validator =
        _cityofYourCompanyTextController1Validator;
    companyZipCodeTextController1Validator =
        _companyZipCodeTextController1Validator;
    firstNameTextController1Validator = _firstNameTextController1Validator;
    lastNameTextController1Validator = _lastNameTextController1Validator;
    dateofbirthTextController1Validator = _dateofbirthTextController1Validator;
    cellphoneTextController1Validator = _cellphoneTextController1Validator;
    passportTextController1Validator = _passportTextController1Validator;
    passportExpirationDateTextController1Validator =
        _passportExpirationDateTextController1Validator;
    companyNameTextController2Validator = _companyNameTextController2Validator;
    companyRegistrationNumberTextController2Validator =
        _companyRegistrationNumberTextController2Validator;
    companysAdressTextController2Validator =
        _companysAdressTextController2Validator;
    cityofYourCompanyTextController2Validator =
        _cityofYourCompanyTextController2Validator;
    companyZipCodeTextController2Validator =
        _companyZipCodeTextController2Validator;
    firstNameTextController2Validator = _firstNameTextController2Validator;
    dateofbirthTextController2Validator = _dateofbirthTextController2Validator;
    cellphoneTextController2Validator = _cellphoneTextController2Validator;
    passportTextController2Validator = _passportTextController2Validator;
    passportExpirationDateTextController2Validator =
        _passportExpirationDateTextController2Validator;
  }

  @override
  void dispose() {
    companyNameFocusNode1?.dispose();
    companyNameTextController1?.dispose();

    companyRegistrationNumberFocusNode1?.dispose();
    companyRegistrationNumberTextController1?.dispose();

    companysAdressFocusNode1?.dispose();
    companysAdressTextController1?.dispose();

    companyAddressNumberFocusNode1?.dispose();
    companyAddressNumberTextController1?.dispose();

    cityofYourCompanyFocusNode1?.dispose();
    cityofYourCompanyTextController1?.dispose();

    companyZipCodeFocusNode1?.dispose();
    companyZipCodeTextController1?.dispose();

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

    companyNameFocusNode2?.dispose();
    companyNameTextController2?.dispose();

    companyRegistrationNumberFocusNode2?.dispose();
    companyRegistrationNumberTextController2?.dispose();

    companysAdressFocusNode2?.dispose();
    companysAdressTextController2?.dispose();

    companyAddressNumberFocusNode2?.dispose();
    companyAddressNumberTextController2?.dispose();

    cityofYourCompanyFocusNode2?.dispose();
    cityofYourCompanyTextController2?.dispose();

    companyZipCodeFocusNode2?.dispose();
    companyZipCodeTextController2?.dispose();

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
  }
}
