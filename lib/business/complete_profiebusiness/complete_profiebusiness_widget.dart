import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'complete_profiebusiness_model.dart';
export 'complete_profiebusiness_model.dart';

class CompleteProfiebusinessWidget extends StatefulWidget {
  const CompleteProfiebusinessWidget({
    super.key,
    required this.email,
    required this.password,
    required this.code,
  });

  final String? email;
  final String? password;
  final String? code;

  static String routeName = 'completeProfiebusiness';
  static String routePath = '/completeProfilebusiness';

  @override
  State<CompleteProfiebusinessWidget> createState() =>
      _CompleteProfiebusinessWidgetState();
}

class _CompleteProfiebusinessWidgetState
    extends State<CompleteProfiebusinessWidget> with TickerProviderStateMixin {
  late CompleteProfiebusinessModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfiebusinessModel());

    _model.companyNameTextController1 ??= TextEditingController();
    _model.companyNameFocusNode1 ??= FocusNode();

    _model.companyRegistrationNumberTextController1 ??= TextEditingController();
    _model.companyRegistrationNumberFocusNode1 ??= FocusNode();

    _model.companysAdressTextController1 ??= TextEditingController();
    _model.companysAdressFocusNode1 ??= FocusNode();

    _model.companyAddressNumberTextController1 ??= TextEditingController();
    _model.companyAddressNumberFocusNode1 ??= FocusNode();

    _model.cityofYourCompanyTextController1 ??= TextEditingController();
    _model.cityofYourCompanyFocusNode1 ??= FocusNode();

    _model.companyZipCodeTextController1 ??= TextEditingController();
    _model.companyZipCodeFocusNode1 ??= FocusNode();

    _model.firstNameTextController1 ??= TextEditingController();
    _model.firstNameFocusNode1 ??= FocusNode();

    _model.lastNameTextController1 ??= TextEditingController();
    _model.lastNameFocusNode1 ??= FocusNode();

    _model.dateofbirthTextController1 ??= TextEditingController();
    _model.dateofbirthFocusNode1 ??= FocusNode();

    _model.dateofbirthMask1 = MaskTextInputFormatter(mask: '##/##/####');
    _model.cellphoneTextController1 ??= TextEditingController();
    _model.cellphoneFocusNode1 ??= FocusNode();

    _model.passportTextController1 ??= TextEditingController();
    _model.passportFocusNode1 ??= FocusNode();

    _model.passportExpirationDateTextController1 ??= TextEditingController();
    _model.passportExpirationDateFocusNode1 ??= FocusNode();

    _model.passportExpirationDateMask1 =
        MaskTextInputFormatter(mask: '##/##/####');
    _model.companyNameTextController2 ??= TextEditingController();
    _model.companyNameFocusNode2 ??= FocusNode();

    _model.companyRegistrationNumberTextController2 ??= TextEditingController();
    _model.companyRegistrationNumberFocusNode2 ??= FocusNode();

    _model.companysAdressTextController2 ??= TextEditingController();
    _model.companysAdressFocusNode2 ??= FocusNode();

    _model.companyAddressNumberTextController2 ??= TextEditingController();
    _model.companyAddressNumberFocusNode2 ??= FocusNode();

    _model.cityofYourCompanyTextController2 ??= TextEditingController();
    _model.cityofYourCompanyFocusNode2 ??= FocusNode();

    _model.companyZipCodeTextController2 ??= TextEditingController();
    _model.companyZipCodeFocusNode2 ??= FocusNode();

    _model.firstNameTextController2 ??= TextEditingController();
    _model.firstNameFocusNode2 ??= FocusNode();

    _model.lastNameTextController2 ??= TextEditingController();
    _model.lastNameFocusNode2 ??= FocusNode();

    _model.dateofbirthTextController2 ??= TextEditingController();
    _model.dateofbirthFocusNode2 ??= FocusNode();

    _model.dateofbirthMask2 = MaskTextInputFormatter(mask: '##/##/####');
    _model.cellphoneTextController2 ??= TextEditingController();
    _model.cellphoneFocusNode2 ??= FocusNode();

    _model.passportTextController2 ??= TextEditingController();
    _model.passportFocusNode2 ??= FocusNode();

    _model.passportExpirationDateTextController2 ??= TextEditingController();
    _model.passportExpirationDateFocusNode2 ??= FocusNode();

    _model.passportExpirationDateMask2 =
        MaskTextInputFormatter(mask: '##/##/####');
    animationsMap.addAll({
      'circleImageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 19.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation9': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation10': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation11': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation12': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'circleImageOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 19.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 50.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation13': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation14': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation15': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation16': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation17': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation18': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation19': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation20': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation21': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation22': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'dropDownOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation23': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'textFieldOnPageLoadAnimation24': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SingleChildScrollView(
        primary: false,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/WhatsApp_Image_2024-07-09_at_23.29.54_(1).jpeg',
                    ).image,
                  ),
                ),
                child: Form(
                  key: _model.formKey1,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                        ),
                        DragTarget<String>(
                          builder: (context, _, __) {
                            return Container(
                              decoration: BoxDecoration(),
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 30.0, 0.0, 10.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    '6y1squyc' /* Complete Profile */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF262D34),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFFA74DC9),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(2.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          final selectedMedia =
                                                              await selectMedia(
                                                            maxHeight: 5000.00,
                                                            multiImage: false,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading_uploadData0w0 =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                            originalFilename:
                                                                                m.originalFilename,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
                                                                  (m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                ),
                                                              ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                            } finally {
                                                              _model.isDataUploading_uploadData0w0 =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile_uploadData0w0 =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadData0w0 =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              return;
                                                            }
                                                          }
                                                        },
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 100.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              _model
                                                                  .uploadedFileUrl_uploadData0w0,
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/1wywv4yl7r1i/Sem_nome_%5BTamanho_original%5D_(1).png',
                                                            ),
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'circleImageOnPageLoadAnimation1']!),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'fouj29n7' /* Upload a photo for us to easil... */,
                                                ),
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation1']!),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 20.0,
                                                          20.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .companyNameTextController1,
                                                      focusNode: _model
                                                          .companyNameFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '0g5t73k9' /* Company Name */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'nw7digwd' /* Name of Your Company */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .companyNameTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textFieldOnPageLoadAnimation1']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .companyRegistrationNumberTextController1,
                                                  focusNode: _model
                                                      .companyRegistrationNumberFocusNode1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'eawtup7o' /* Company Registration Number */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'gpp50fw5' /* Registration number of your co... */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .companyRegistrationNumberTextController1Validator
                                                      .asValidator(context),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation2']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      final selectedMedia =
                                                          await selectMedia(
                                                        maxWidth: 500.00,
                                                        maxHeight: 500.00,
                                                        includeDimensions: true,
                                                        multiImage: false,
                                                      );
                                                      if (selectedMedia !=
                                                              null &&
                                                          selectedMedia.every((m) =>
                                                              validateFileFormat(
                                                                  m.storagePath,
                                                                  context))) {
                                                        safeSetState(() => _model
                                                                .isDataUploading_uploadData2wb =
                                                            true);
                                                        var selectedUploadedFiles =
                                                            <FFUploadedFile>[];

                                                        var downloadUrls =
                                                            <String>[];
                                                        try {
                                                          selectedUploadedFiles =
                                                              selectedMedia
                                                                  .map((m) =>
                                                                      FFUploadedFile(
                                                                        name: m
                                                                            .storagePath
                                                                            .split('/')
                                                                            .last,
                                                                        bytes: m
                                                                            .bytes,
                                                                        height: m
                                                                            .dimensions
                                                                            ?.height,
                                                                        width: m
                                                                            .dimensions
                                                                            ?.width,
                                                                        blurHash:
                                                                            m.blurHash,
                                                                        originalFilename:
                                                                            m.originalFilename,
                                                                      ))
                                                                  .toList();

                                                          downloadUrls =
                                                              (await Future
                                                                      .wait(
                                                            selectedMedia.map(
                                                              (m) async =>
                                                                  await uploadData(
                                                                      m.storagePath,
                                                                      m.bytes),
                                                            ),
                                                          ))
                                                                  .where((u) =>
                                                                      u != null)
                                                                  .map(
                                                                      (u) => u!)
                                                                  .toList();
                                                        } finally {
                                                          _model.isDataUploading_uploadData2wb =
                                                              false;
                                                        }
                                                        if (selectedUploadedFiles
                                                                    .length ==
                                                                selectedMedia
                                                                    .length &&
                                                            downloadUrls
                                                                    .length ==
                                                                selectedMedia
                                                                    .length) {
                                                          safeSetState(() {
                                                            _model.uploadedLocalFile_uploadData2wb =
                                                                selectedUploadedFiles
                                                                    .first;
                                                            _model.uploadedFileUrl_uploadData2wb =
                                                                downloadUrls
                                                                    .first;
                                                          });
                                                        } else {
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                      }
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: CachedNetworkImage(
                                                        fadeInDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        fadeOutDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        imageUrl:
                                                            valueOrDefault<
                                                                String>(
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.copyofcompanyregistration,
                                                              ''),
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/iescy38l5sqg/Inserir_um_t%C3%ADtulo_(3).png',
                                                        ),
                                                        width: 397.0,
                                                        height: 70.0,
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'imageOnPageLoadAnimation1']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .companysAdressTextController1,
                                                  focusNode: _model
                                                      .companysAdressFocusNode1,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'hrkl58u8' /* Company's Adress */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '3tvakxb6' /* Your Company Address */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lexend(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .companysAdressTextController1Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation3']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .companyAddressNumberTextController1,
                                                  focusNode: _model
                                                      .companyAddressNumberFocusNode1,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'z9daw55o' /* Company Address Number */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'tzclbrif' /* Your Company Address Number */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lexend(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .companyAddressNumberTextController1Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation4']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .cityofYourCompanyTextController1,
                                                  focusNode: _model
                                                      .cityofYourCompanyFocusNode1,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'n7fclv2y' /* Company City */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'xp0nyltl' /* City of Your Company */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lexend(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .cityofYourCompanyTextController1Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation5']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .countryofYourCompanyValueController1 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'esb7a6zb' /* Afghanistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '38lt8j9o' /* Albania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bh24zdfj' /* Algeria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uw224gjj' /* Andorra */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '192bz522' /* Angola */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rx137vs5' /* Antigua and Barbuda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gxcdxroa' /* Argentina */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vdto1qby' /* Armenia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'keouvclk' /* Australia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z67nes9h' /* Austria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1l949rs2' /* Azerbaijan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ivtsdetv' /* Bahamas */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r7ik5wfq' /* Bahrain */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7ig5ad1v' /* Bangladesh */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'anehqi25' /* Barbados */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l6h2rosr' /* Belarus */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ks3azmja' /* Belgium */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0a97tb7w' /* Belize */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kiu93hyt' /* Benin */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '35sp984d' /* Bhutan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n8bwkzxu' /* Bolivia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l6jholij' /* Bosnia and Herzegovina */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4axiqloi' /* Botswana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'iiqtwfp0' /* Brazil */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3h9h4qdl' /* Brunei */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u2hckyw1' /* Bulgaria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6egsin3h' /* Burkina Faso */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gzca1vpt' /* Burundi */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8u8rfont' /* Cabo Verde */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '53o7fmuo' /* Cambodia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yyjtcr1j' /* Cameroon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5jviyyps' /* Canada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd5tbs6r2' /* Central African Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2hzyb0d6' /* Chad */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ff90k4ml' /* Chile */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7vnu4u4c' /* China */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pri673b0' /* Colombia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kgeob8di' /* Comoros */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j5t9z63j' /* Congo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6zhd1usg' /* Costa Rica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bw631jw1' /* Croatia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9u2zmkbi' /* Cuba */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9e7uc9y2' /* Cyprus */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '10bqd0z6' /* Czech Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tbiec88j' /* Denmark */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g2y3haj3' /* Djibouti */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7btq9uu0' /* Dominica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o116hnnt' /* Dominican Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gg2bijgg' /* East Timor (Timor-Leste) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7wu7j96d' /* Ecuador */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5os30knn' /* Egypt */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dfx2rjde' /* El Salvador */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0lcin6u4' /* Equatorial Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u0kj1aos' /* Eritrea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1v3e04si' /* Estonia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '60tda5hx' /* Eswatini */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rmnqhfi8' /* Ethiopia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n4ixaihh' /* Fiji */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'smzkoy4k' /* Finland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8g2dnftr' /* France */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ksh76oc0' /* Gabon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '553wfu4q' /* Gambia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mdyldvri' /* Georgia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ej0gdttj' /* Germany */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4kapnoio' /* Ghana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uj1ratcl' /* Greece */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dyr60bbv' /* Grenada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ul4jugiw' /* Guatemala */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uee73h0a' /* Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xz2emtce' /* Guinea-Bissau */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5gs656yk' /* Guyana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jodi1a1b' /* Haiti */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kbum4dfp' /* Honduras */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '00lzsg9b' /* Hungary */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bk4aiuip' /* Iceland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yabbfn3j' /* India */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'spohs6zk' /* Indonesia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p9mm4jxu' /* Iran */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xtmqi90y' /* Iraq */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mkur9b5j' /* Ireland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wrdf050b' /* Israel */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2mj96ca3' /* Italy */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8m3its1j' /* Ivory Coast */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '79o6qp2x' /* Jamaica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fbyqrbld' /* Japan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7j025nws' /* Jordan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6qs550eb' /* Kazakhstan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '811dho9z' /* Kenya */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wb7iws3d' /* Kiribati */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'htu8jcpa' /* Korea, North */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n1fad67q' /* Korea, South */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '28p582wv' /* Kosovo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y9mn4q0j' /* Kuwait */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ymvrgozy' /* Kyrgyzstan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9nc0ka0n' /* Laos */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'iggbpc7e' /* Latvia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yrvbr5g4' /* Lebanon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a8pq5lds' /* Lesotho */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ed8nc6ej' /* Liberia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ke4qe1u4' /* Libya */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yju8z61e' /* Liechtenstein */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6tiqkxmi' /* Lithuania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tagcfdf4' /* Luxembourg */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qovryhnq' /* Madagascar */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6png34so' /* Malawi */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qnznxhk0' /* Malaysia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ce8tr15d' /* Maldives */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cf8v294u' /* Mali */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7b4ltyit' /* Malta */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qwyvi0b2' /* Marshall Islands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kkhxv893' /* Mauritania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l1nzdc28' /* Mauritius */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hl88ob0t' /* Mexico */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1tcjcww0' /* Micronesia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gzmov9dq' /* Moldova */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '85ucw8np' /* Monaco */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ggsdhxmn' /* Mongolia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yy4402zo' /* Montenegro */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yb2b4ccu' /* Morocco */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hf87uqx1' /* Mozambique */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vhih128x' /* Myanmar (Burma) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b6rc5mtl' /* Namibia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p678s4ui' /* Nauru */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gpqdd0il' /* Nepal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cyya9gxy' /* Netherlands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cj1x6i75' /* New Zealand */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's2xa285t' /* Nicaragua */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '07d86ne4' /* Niger */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b1r00g3l' /* Nigeria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8vrdr0a3' /* North Macedonia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p56aqhyq' /* Norway */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't8qveiut' /* Oman */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nz0e2vqi' /* Pakistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mgnbw9us' /* Palau */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '34znyv1u' /* Panama */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nzd19ltd' /* Papua New Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2sgygonz' /* Paraguay */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'aizm9v8i' /* Peru */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1ls009pj' /* Philippines */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'crieu1lt' /* Poland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2kk5o127' /* Portugal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sfimyfd3' /* Qatar */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kvaeanhr' /* Romania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'i93qrwo4' /* Russia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6afulk95' /* Rwanda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3qitum78' /* Saint Kitts and Nevis */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5q8hripp' /* Saint Lucia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0djgvd9i' /* Saint Vincent and the Grenadin... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v4xhklcn' /* Samoa */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r2ppe021' /* San Marino */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lhdgy847' /* Sao Tome and Principe */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mq0b8hgy' /* Saudi Arabia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u5ffevts' /* Senegal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e4fff2gk' /* Serbia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8kql4o2i' /* Seychelles */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2sigp2s8' /* Sierra Leone */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ptt8adal' /* Singapore */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fgi664my' /* Slovakia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kvkjt4cp' /* Slovenia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9332bdch' /* Solomon Islands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fq90gv6d' /* Somalia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '68yu755x' /* South Africa */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6kgx8j00' /* South Sudan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p83qhje7' /* Spain */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't8wv0ps6' /* Sri Lanka */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c17vhs7q' /* Sudan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9nepohvp' /* Suriname */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tapezrtz' /* Sweden */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wlni4frm' /* Switzerland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '538yzk2d' /* Syria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'delfrgfm' /* Taiwan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'iab1q0au' /* Tajikistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'muytq6du' /* Tanzania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'crhlsc6x' /* Thailand */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u451nwbm' /* Togo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wedolh2g' /* Tonga */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7t27xm72' /* Trinidad and Tobago */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1lgvu9aq' /* Tunisia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'i1tdqryk' /* Turkey */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6j4gic5s' /* Turkmenistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'duyucrmv' /* Tuvalu */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'apbcx5bj' /* Uganda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4yuv0mej' /* Ukraine */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7kxr7w39' /* United Arab Emirates */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ijt5a523' /* United Kingdom */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ek98wvjd' /* United States */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'we765uyy' /* Uruguay */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o0o2og7f' /* Uzbekistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cz2t1y8f' /* Vanuatu */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9w3q77ai' /* Vatican City */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yqp08bbv' /* Venezuela */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'recih4d5' /* Vietnam */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '63rumfif' /* Yemen */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8avh2819' /* Zambia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xtl1b9p4' /* Zimbabwe */,
                                                    )
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .countryofYourCompanyValue1 =
                                                          val),
                                                  height: 70.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    's5cgu0qr' /* Country of Your Company */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: Color(0xFF8B97A2),
                                                    size: 24.0,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2.0,
                                                  borderColor: Colors.white,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 11.0,
                                                          16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                  labelText: '',
                                                  labelTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'dropDownOnPageLoadAnimation1']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .companyZipCodeTextController1,
                                                  focusNode: _model
                                                      .companyZipCodeFocusNode1,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '1uc1k3e2' /* Company Zip Code */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '1fbzoq3l' /* Your Company's Zip Code */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lexend(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .companyZipCodeTextController1Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation6']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .firstNameTextController1,
                                                  focusNode: _model
                                                      .firstNameFocusNode1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '8nbipa17' /* First Name */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'b35a4q4y' /* Your Name */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .firstNameTextController1Validator
                                                      .asValidator(context),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation7']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .lastNameTextController1,
                                                  focusNode:
                                                      _model.lastNameFocusNode1,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'kbfcunam' /* Last Name */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'opf1910i' /* Your Last Name */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .lastNameTextController1Validator
                                                      .asValidator(context),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation8']!),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(20.0, 20.0,
                                                          20.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .dateofbirthTextController1,
                                                      focusNode: _model
                                                          .dateofbirthFocusNode1,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'nuz5lyf3' /* Date of Birth */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'wogag20k' /* Date of Your Birth */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      keyboardType:
                                                          TextInputType.number,
                                                      validator: _model
                                                          .dateofbirthTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.dateofbirthMask1
                                                      ],
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textFieldOnPageLoadAnimation9']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .areaCodeValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '59jeipob' /* Afghanistan (+93) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hj7ng2o9' /* Albania (+355) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9xvrddv0' /* Algeria (+213) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4j90z4sp' /* Andorra (+376) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jtoej2sy' /* Angola (+244) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7937divv' /* Antigua and Barbuda (+1 264) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l0eq5m08' /* Argentina (+54) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fcof0ipw' /* Armenia (+374) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5d90siy0' /* Australia (+61) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pl0iguvc' /* Austria (+43) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fjwpqey4' /* Azerbaijan (+994) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kysi23xt' /* Bahamas (+1 242) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c177xpe0' /* Bahrain (+973) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '759wzflx' /* Bangladesh (+880) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'w0e29wll' /* Barbados (+1246) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0wxhazo3' /* Belarus (+375) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'em1iph7s' /* Belgium (+32) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z018z3hk' /* Belize (+501) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3jzv7ame' /* Benin (+229) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1b5fme4k' /* Bhutan (+975) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9jxvcn48' /* Bolivia (+591) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'spb6uyfi' /* Bosnia and Herzegovina (+387) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '434bc2xl' /* Botswana (+267) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vwjwxt3u' /* Brazil (+55) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9sp6whun' /* Brunei Darussalam (+673) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dzxi2dj9' /* Bulgaria (+359) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gpk48bil' /* Burkina Faso (+226) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r6lbg9g1' /* Burundi (+257) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e22xm4p6' /* Cape Verde (+238) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'll8zkn3l' /* Cambodia (+855) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vyrzhgv0' /* Cameroon (+237) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2wiot5rm' /* Canada (+1) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mf70pjeg' /* Central African Republic (+236... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'djxpmz6o' /* Chad (+235) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3z584s9u' /* Chile (+56) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lzeurf56' /* China (+86) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '32sy3qt6' /* Colombia (+57) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '12kyqil7' /* Comoros (+269) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kdqx2ygh' /* Congo (+242) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yl1t3826' /* Costa Rica (+506) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k6ho12yc' /* Croatia (+385) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'aw7fq9fm' /* Cuba (+53) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jbrxue9c' /* Cyprus (+357) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ntzrjywn' /* Czech Republic (+420) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cnd3qhh8' /* Denmark (+45) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ymnzsdi1' /* Djibouti (+253) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '20roqmqk' /* Dominica (+1 767) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wujx0uyx' /* Dominican Republic (+1 809) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x03h18m3' /* Ecuador (+593) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xb0tj87p' /* Egypt (+20) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lausniuv' /* El Salvador (+503) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1evz28a5' /* Equatorial Guinea (+240) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uxxsr9h7' /* Eritrea (+291) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bbs5nc26' /* Estonia (+372) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7850zh44' /* Estonia (+372) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5g393w2q' /* Ethiopia (+251) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kr0lc7pm' /* Fiji (+679) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'quzrm7gu' /* Finland (+358) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qpzilf0b' /* France (+33) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1wcqyh6f' /* Gabon (+241) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9jobxug1' /* Gambia (+220) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rhgq9yu3' /* Georgia (+995) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'duc748vm' /* Germany (+49) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'esnsugn6' /* Ghana (+233) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd7atsxh6' /* Greece (+30) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '40qtkpdm' /* Grenada (+1 473) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n1389aq3' /* Guatemala (+502) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fl7xoji6' /* Guinea (+224) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8ueo8h37' /* Guinea-Bissau (+245) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e76cp0tk' /* Guyana (+592) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sa4c4ppg' /* Haiti (+509) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9vx6serp' /* Honduras (+504) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd6vw1zuo' /* Hungary (+36) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ocxknfc7' /* Iceland (+354) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1b18c4l2' /* India (+91) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dld3ttmn' /* Indonesia (+62) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'i3ahzoyd' /* Iran (+98) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9ll3lbvz' /* Iraq (+964) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ksnpb6qh' /* Ireland (+353) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7fwlkgnl' /* Israel (+972) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zwp3o6sx' /* Italy (+39) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ppv72mc5' /* Jamaica (+1 876) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8f67w48h' /* Japan (+81) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p3ginlgc' /* Jordan (+962) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lsbjic5w' /* Kazakhstan (+7) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'q2e9r08d' /* Kenya (+254) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7jbi4993' /* Kiribati (+686) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't2bm366i' /* Korea, North (+850) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sv0vbifv' /* Korea, South (+82) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'f9p3u91r' /* Kuwait (+965) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y2w17ool' /* Kyrgyzstan (+996) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4jaol9h1' /* Laos (+856) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'f6xmknuw' /* Latvia (+371) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dg2yzzpo' /* Lebanon (+961) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qsvng9rt' /* Lesotho (+266) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ig3osbim' /* Liberia (+231) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yhf4l0tc' /* Libya (+218) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wdy0q6tk' /* Liechtenstein (+423) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qir3qs5r' /* Lithuania (+370) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'osdl6fmd' /* Luxembourg (+352) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kafrvucr' /* Madagascar (+261) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zw0dotdl' /* Malawi (+265) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2aq68qh4' /* Malaysia (+60) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qyw4822w' /* Maldives (+960) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '65t7r3z1' /* Mali (+223) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n6604k5s' /* Malta (+356) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1s0ji8i0' /* Marshall Islands (+692) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'eypi2k4e' /* Mauritania (+222) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'naornuzi' /* Mauritius (+230) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fyt6bb5f' /* Mexico (+52) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xtn9xq3c' /* Micronesia (+691) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '229cu92p' /* Moldova (+373) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'en41jjg7' /* Monaco (+377) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ty3jiuy8' /* Mongolia (+976) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j2c7zrza' /* Montenegro (+382) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5k2i9vis' /* Morocco (+212) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'alau6dn3' /* Mozambique (+258) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'km7dj7of' /* Myanmar (+95) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7alje5dr' /* Namibia (+264) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ar9ki2i8' /* Nauru (+674) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ummep7x9' /* Nepal (+977) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tw1aqqfi' /* Netherlands (+31) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tqkh4o1i' /* New Zealand (+64) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7j7go2dp' /* Nicaragua (+505) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bree3qhg' /* Niger (+227) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ny4e4wj3' /* Nigeria (+234) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'i7ayktaj' /* North Macedonia (+389) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oxrxa6xu' /* Norway (+47) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wfl5l47v' /* Oman (+968) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hkjdfmp6' /* Pakistan (+92) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c8empres' /* Palau (+680) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jhfmf9cb' /* Panama (+507) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g6doj3d5' /* Papua New Guinea (+675) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uot83b4d' /* Paraguay (+595) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7h6dtogu' /* Peru (+51) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ac7crwxz' /* Philippines (+63) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wur6j3t5' /* Poland (+48) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l5gtu2rt' /* Portugal (+351) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm3ipeb1w' /* Qatar (+974) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '108rsabw' /* Romania (+40) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'akaectr3' /* Russia (+7) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2i9ycezj' /* Rwanda (+250) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e0hbapde' /* Saint Kitts and Nevis (+1 869) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hzoj1zbi' /* Saint Lucia (+1 758) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jnnxd58c' /* Saint Vincent and the Grenadin... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cdywvohq' /* Samoa (+685) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p9bywdgd' /* San Marino (+378) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z8keb9pw' /* Sao Tome and Principe (+239) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tc9uucjq' /* Saudi Arabia (+966) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o3edbpip' /* Senegal (+221) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v3jbexg4' /* Serbia (+381) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'if90c7c4' /* Seychelles (+248) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vau6djak' /* Sierra Leone (+232) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zm15nhm8' /* Singapore (+65) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7pi8wl5k' /* Slovakia (+421) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rte5wiwq' /* Slovenia (+386) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3m6lbe14' /* Solomon Islands (+677) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u4pfe39g' /* Somalia (+252) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't1u6oqyg' /* South Africa (+27) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sh3d7ypg' /* South Sudan (+211) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'exabvv83' /* Spain (+34) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5pmiggys' /* Sri Lanka (+94) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'djnnyl5x' /* Sudan (+249) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ne5zzurv' /* Suriname (+597) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'odl16xm6' /* Sweden (+46) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y9jsjwit' /* Switzerland (+41) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yzk5108u' /* Syria (+963) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x3xtz0bx' /* Taiwan (+886) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jf73egmg' /* Tajikistan (+992) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4h2q8m0b' /* Tanzania (+255) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wi5fa6lr' /* Thailand (+66) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nqii7n65' /* Togo (+228) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'add27q0y' /* Tonga (+676) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vh4sl47y' /* Trinidad and Tobago (+1 868) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'srfxozyb' /* Tunisia (+216) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'krqgq0rs' /* Turkey (+90) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'umzc296w' /* Turkmenistan (+993) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tr6b3aqg' /* Tuvalu (+688) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wssm1mfd' /* Uganda (+256) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g4httmqt' /* Ukraine (+380) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'otw293wh' /* United Arab Emirates (+971) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kbdosbpg' /* United Kingdom (+44) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3r5heppz' /* United States of America (+1) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lcpw7u0n' /* Uruguay (+598) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hlldjdqm' /* Uzbekistan (+998) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '44833dsj' /* Vanuatu (+678) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5hega4pu' /* Venezuela (+58) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bewitz3t' /* Vietnam (+84) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7hfxz4wb' /* Yemen (+967) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2g0153e7' /* Zambia (+260) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'caboyo4y' /* Zimbabwe (+263) */,
                                                    )
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                          .areaCodeValue = val),
                                                  height: 70.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '6j7nrur8' /* Area Code */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: Color(0xFF8B97A2),
                                                    size: 24.0,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2.0,
                                                  borderColor: Colors.white,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 11.0,
                                                          16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                  labelText: '',
                                                  labelTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'dropDownOnPageLoadAnimation2']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .cellphoneTextController1,
                                                  focusNode: _model
                                                      .cellphoneFocusNode1,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'sdi2m6av' /* Cell Phone */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      't7ijl7pv' /* Your Cell Phone */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .cellphoneTextController1Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation10']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .nationalityValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r27axf6c' /* Afghanistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '43o6egwp' /* Albania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5u5jyewo' /* Algeria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g856wexw' /* Andorra */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gegs7pqm' /* Angola */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rcen58oy' /* Antigua and Barbuda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zczdomxt' /* Argentina */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd8y37ke2' /* Armenia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qv8pq36l' /* Australia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ohq9kk0r' /* Austria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ibn6zva7' /* Azerbaijan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ol8qqo67' /* Bahamas */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xkcotf3h' /* Bahrain */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7nd93h6d' /* Bangladesh */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '73k0mhsv' /* Barbados */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'iuj1d32s' /* Belarus */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6g8idz3f' /* Belgium */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r4c00hpq' /* Belize */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0xx5c3n7' /* Benin */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3zbdt69f' /* Bhutan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a2ny5ra0' /* Bolivia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '321lpn6i' /* Bosnia and Herzegovina */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zgg0b2gj' /* Botswana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o6pms1p2' /* Brazil */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ty3vl0rn' /* Brunei */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'q5immk31' /* Bulgaria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'owluqtck' /* Burkina Faso */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qa0aye46' /* Burundi */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ktn6wczq' /* Cabo Verde */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cioowydf' /* Cambodia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y83t89wq' /* Cameroon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r787ojtv' /* Canada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sm4aoay8' /* Central African Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '94v4jnwx' /* Chad */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ec4x0vti' /* Chile */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3th5c34g' /* China */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'njk2cgxk' /* Colombia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h13b8yd1' /* Comoros */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gfg0l66q' /* Congo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dc8sjzo7' /* Costa Rica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cnojcmqe' /* Croatia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5kbia0vd' /* Cuba */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5uupm04h' /* Cyprus */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ok41s2vc' /* Czech Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0w53vnxw' /* Denmark */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '454tlir7' /* Djibouti */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kdgr17fx' /* Dominica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jc68sfmm' /* Dominican Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jn2v6axs' /* East Timor (Timor-Leste) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jscrpquz' /* Ecuador */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1rpg11db' /* Egypt */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z5fhh2o6' /* El Salvador */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'aa4luwyi' /* Equatorial Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lvb8npa4' /* Eritrea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kewmhney' /* Estonia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j4fc3nm4' /* Eswatini */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1lg2vgjb' /* Ethiopia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jafio1lm' /* Fiji */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0bvn8ow0' /* Finland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hcgd05j3' /* France */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dr1hkkim' /* Gabon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5mdlyjiy' /* Gambia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gh5gikcn' /* Georgia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kve6v160' /* Germany */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cs41118j' /* Ghana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ch694pl9' /* Greece */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pfcfpa30' /* Grenada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'izn3w876' /* Guatemala */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '08kh8ey9' /* Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jrjcdynq' /* Guinea-Bissau */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0plgsvrf' /* Guyana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z7h5gn5b' /* Haiti */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tygbekkf' /* Honduras */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hyr2oovx' /* Hungary */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'twgkovao' /* Iceland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't9wpqqni' /* India */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xznu2df4' /* Indonesia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '748mrz4m' /* Iran */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ojajq1nu' /* Iraq */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zyzfpnuz' /* Ireland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a9on4scr' /* Israel */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'heip0et0' /* Italy */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p7mkdkwj' /* Ivory Coast */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ne4yikqm' /* Jamaica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '469axa1b' /* Japan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qdm23th8' /* Jordan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o49veo5t' /* Kazakhstan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ke4tynk2' /* Kenya */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3wv2mema' /* Kiribati */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wf1jinoq' /* Korea, North */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't4suudh2' /* Korea, South */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jffahkap' /* Kosovo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '937db6x0' /* Kuwait */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gubk2zy0' /* Kyrgyzstan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k01yfjxa' /* Laos */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zg3crmy0' /* Latvia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'peqnrvz9' /* Lebanon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ncsq4n5d' /* Lesotho */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wrn7r0mx' /* Liberia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm1e07zjd' /* Libya */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ngvxlcl9' /* Liechtenstein */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '54gavqfe' /* Lithuania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v9hqlrjc' /* Luxembourg */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ys19s50p' /* Madagascar */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l5bjkm3r' /* Malawi */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8juc230o' /* Malaysia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0alh7qrw' /* Maldives */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mj0i1lhx' /* Mali */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8q9egmtf' /* Malta */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'djvspl4k' /* Marshall Islands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm1do4b4m' /* Mauritania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yba3nqky' /* Mauritius */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x9mzzq54' /* Mexico */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lg1kp6jf' /* Micronesia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b68ts87u' /* Moldova */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5185yhex' /* Monaco */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x91z6t8w' /* Mongolia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nyfogpvd' /* Montenegro */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'eifaptaj' /* Morocco */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v2lmrsee' /* Mozambique */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r2ir7r97' /* Myanmar (Burma) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5bmb5wqe' /* Namibia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '23hi3gga' /* Nauru */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z5l1t45x' /* Nepal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mh5n4xlk' /* Netherlands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rfsdgzg7' /* New Zealand */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yqxfuj22' /* Nicaragua */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a85noth9' /* Niger */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4cx0szj8' /* Nigeria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bfrppdsv' /* North Macedonia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tcqx2ab6' /* Norway */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pc72opny' /* Oman */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r2x0v0lm' /* Pakistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6i7znwaf' /* Palau */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hvmwutvx' /* Panama */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6xj9ic5o' /* Papua New Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mwuklbry' /* Paraguay */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3togvst2' /* Peru */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vf1byv09' /* Philippines */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'knl1v7ug' /* Poland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qfk4kdgg' /* Portugal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5p839qcu' /* Qatar */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm1dc61db' /* Romania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4gg6kaxp' /* Russia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3vsk4n1l' /* Rwanda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nxt72yi5' /* Saint Kitts and Nevis */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0g857v4h' /* Saint Lucia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b067xsid' /* Saint Vincent and the Grenadin... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ta8s3w9p' /* Samoa */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '58hr24ey' /* San Marino */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ncgfwf16' /* Sao Tome and Principe */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vu4retri' /* Saudi Arabia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bcp2gn76' /* Senegal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y197fku6' /* Serbia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nqbzyed1' /* Seychelles */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ykeiy1w2' /* Sierra Leone */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rl7au15r' /* Singapore */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z7nwz93d' /* Slovakia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p8evbk09' /* Slovenia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3oe3m06t' /* Solomon Islands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'psoaou5l' /* Somalia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mkgxxte2' /* South Africa */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nfwb8yqb' /* South Sudan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qpprsrsz' /* Spain */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3untw2v9' /* Sri Lanka */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vj0ydpnt' /* Sudan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ps3qrjnk' /* Suriname */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pagdnwsk' /* Sweden */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3mq1stud' /* Switzerland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zab81qty' /* Syria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wka7r1hw' /* Taiwan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oo3bvnqw' /* Tajikistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ycwm3hr5' /* Tanzania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6e9zfdqk' /* Thailand */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hj2wr40j' /* Togo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pcprf4cj' /* Tonga */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g294uy3h' /* Trinidad and Tobago */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'q5tp08ao' /* Tunisia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xurtwtht' /* Turkey */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '45pkgfz6' /* Turkmenistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '13dnz0zu' /* Tuvalu */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4yg5er6v' /* Uganda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e3x8rgac' /* Ukraine */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3piiaxrh' /* United Arab Emirates */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cj46dcmv' /* United Kingdom */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6x3808g4' /* United States */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9900ecsm' /* Uruguay */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pn4se0xr' /* Uzbekistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o8ysln0i' /* Vanuatu */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dufnlmpd' /* Vatican City */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xpbxp64t' /* Venezuela */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tgxfm64h' /* Vietnam */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6p547pqj' /* Yemen */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm0o84qn2' /* Zambia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x2yhytds' /* Zimbabwe */,
                                                    )
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .nationalityValue =
                                                          val),
                                                  height: 70.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'c7mn89n1' /* Nationality */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: Color(0xFF8B97A2),
                                                    size: 24.0,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2.0,
                                                  borderColor: Colors.white,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 11.0,
                                                          16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                  labelText: '',
                                                  labelTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'dropDownOnPageLoadAnimation3']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .passportTextController1,
                                                  focusNode:
                                                      _model.passportFocusNode1,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'eu5op278' /* Passport */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ot3jw0rp' /* Your Passport */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .passportTextController1Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation11']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      final selectedMedia =
                                                          await selectMediaWithSourceBottomSheet(
                                                        context: context,
                                                        maxWidth: 500.00,
                                                        maxHeight: 500.00,
                                                        allowPhoto: true,
                                                        includeDimensions: true,
                                                      );
                                                      if (selectedMedia !=
                                                              null &&
                                                          selectedMedia.every((m) =>
                                                              validateFileFormat(
                                                                  m.storagePath,
                                                                  context))) {
                                                        safeSetState(() => _model
                                                                .isDataUploading_uploadData7c9 =
                                                            true);
                                                        var selectedUploadedFiles =
                                                            <FFUploadedFile>[];

                                                        var downloadUrls =
                                                            <String>[];
                                                        try {
                                                          selectedUploadedFiles =
                                                              selectedMedia
                                                                  .map((m) =>
                                                                      FFUploadedFile(
                                                                        name: m
                                                                            .storagePath
                                                                            .split('/')
                                                                            .last,
                                                                        bytes: m
                                                                            .bytes,
                                                                        height: m
                                                                            .dimensions
                                                                            ?.height,
                                                                        width: m
                                                                            .dimensions
                                                                            ?.width,
                                                                        blurHash:
                                                                            m.blurHash,
                                                                        originalFilename:
                                                                            m.originalFilename,
                                                                      ))
                                                                  .toList();

                                                          downloadUrls =
                                                              (await Future
                                                                      .wait(
                                                            selectedMedia.map(
                                                              (m) async =>
                                                                  await uploadData(
                                                                      m.storagePath,
                                                                      m.bytes),
                                                            ),
                                                          ))
                                                                  .where((u) =>
                                                                      u != null)
                                                                  .map(
                                                                      (u) => u!)
                                                                  .toList();
                                                        } finally {
                                                          _model.isDataUploading_uploadData7c9 =
                                                              false;
                                                        }
                                                        if (selectedUploadedFiles
                                                                    .length ==
                                                                selectedMedia
                                                                    .length &&
                                                            downloadUrls
                                                                    .length ==
                                                                selectedMedia
                                                                    .length) {
                                                          safeSetState(() {
                                                            _model.uploadedLocalFile_uploadData7c9 =
                                                                selectedUploadedFiles
                                                                    .first;
                                                            _model.uploadedFileUrl_uploadData7c9 =
                                                                downloadUrls
                                                                    .first;
                                                          });
                                                        } else {
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                      }
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: CachedNetworkImage(
                                                        fadeInDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        fadeOutDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        imageUrl:
                                                            valueOrDefault<
                                                                String>(
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.copyofpassport,
                                                              ''),
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/jl9ii6jl7h8b/Copy_Of_Passport.png',
                                                        ),
                                                        width: 397.0,
                                                        height: 70.0,
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'imageOnPageLoadAnimation2']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .passportExpirationDateTextController1,
                                                  focusNode: _model
                                                      .passportExpirationDateFocusNode1,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ygwb91yh' /* Passport Expiration Date */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '78chh4yf' /* Expiration Date of Your Passpo... */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .passportExpirationDateTextController1Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    _model
                                                        .passportExpirationDateMask1
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation12']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child:
                                                    StreamBuilder<UsersRecord>(
                                                  stream:
                                                      UsersRecord.getDocument(
                                                          currentUserReference!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          child:
                                                              SpinKitCubeGrid(
                                                            color: Color(
                                                                0xFFA74DC9),
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                      );
                                                    }

                                                    final buttonLoginUsersRecord =
                                                        snapshot.data!;

                                                    return FFButtonWidget(
                                                      onPressed: () async {
                                                        if (_model.formKey1
                                                                    .currentState ==
                                                                null ||
                                                            !_model.formKey1
                                                                .currentState!
                                                                .validate()) {
                                                          return;
                                                        }
                                                        if (_model
                                                                .uploadedFileUrl_uploadData0w0
                                                                .isEmpty) {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            maxHeight: 500.00,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading_uploadData0w0 =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              showUploadMessage(
                                                                context,
                                                                'Uploading file...',
                                                                showLoading:
                                                                    true,
                                                              );
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                            originalFilename:
                                                                                m.originalFilename,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
                                                                  (m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                ),
                                                              ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                            } finally {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .hideCurrentSnackBar();
                                                              _model.isDataUploading_uploadData0w0 =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile_uploadData0w0 =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadData0w0 =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                              showUploadMessage(
                                                                  context,
                                                                  'Success!');
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              showUploadMessage(
                                                                  context,
                                                                  'Failed to upload data');
                                                              return;
                                                            }
                                                          }

                                                          return;
                                                        }
                                                        if ((_model.uploadedLocalFile_uploadData2wb
                                                                        .bytes ??
                                                                    [])
                                                                .isEmpty) {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            maxHeight: 5000.00,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading_uploadData2wb =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              showUploadMessage(
                                                                context,
                                                                'Uploading file...',
                                                                showLoading:
                                                                    true,
                                                              );
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                            originalFilename:
                                                                                m.originalFilename,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
                                                                  (m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                ),
                                                              ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                            } finally {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .hideCurrentSnackBar();
                                                              _model.isDataUploading_uploadData2wb =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile_uploadData2wb =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadData2wb =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                              showUploadMessage(
                                                                  context,
                                                                  'Success!');
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              showUploadMessage(
                                                                  context,
                                                                  'Failed to upload data');
                                                              return;
                                                            }
                                                          }

                                                          return;
                                                        }

                                                        await buttonLoginUsersRecord
                                                            .reference
                                                            .update(
                                                                createUsersRecordData(
                                                          photoUrl: _model
                                                              .uploadedFileUrl_uploadData0w0,
                                                          companyName: _model
                                                              .companyNameTextController1
                                                              .text,
                                                          companyregistrationnumber:
                                                              _model
                                                                  .companyRegistrationNumberTextController1
                                                                  .text,
                                                          copyofcompanyregistration:
                                                              _model
                                                                  .uploadedFileUrl_uploadData2wb,
                                                          companysadress: _model
                                                              .companysAdressTextController1
                                                              .text,
                                                          companyaddressnumber:
                                                              _model
                                                                  .companyAddressNumberTextController1
                                                                  .text,
                                                          companycity: _model
                                                              .cityofYourCompanyTextController1
                                                              .text,
                                                          companycountry: _model
                                                              .countryofYourCompanyValue1,
                                                          companyzipcode: _model
                                                              .companyZipCodeTextController1
                                                              .text,
                                                          dateofbirth: _model
                                                              .dateofbirthTextController1
                                                              .text,
                                                          phoneNumber: _model
                                                              .cellphoneTextController1
                                                              .text,
                                                          nationality: _model
                                                              .nationalityValue,
                                                          passportnumber: _model
                                                              .passportTextController1
                                                              .text,
                                                          copyofpassport: _model
                                                              .uploadedFileUrl_uploadData7c9,
                                                          passportexpirationdate:
                                                              _model
                                                                  .passportExpirationDateTextController1
                                                                  .text,
                                                          areaCode: _model
                                                              .areaCodeValue,
                                                          lastName: _model
                                                              .lastNameTextController1
                                                              .text,
                                                          accountNumberZloty:
                                                              functions
                                                                  .newCustomFunction(),
                                                          accountNumberEuro:
                                                              functions
                                                                  .newCustomFunctionEuro(),
                                                          accountNumberDollar:
                                                              functions
                                                                  .newCustomFunctionDollar(),
                                                          firstName: _model
                                                              .firstNameTextController1
                                                              .text,
                                                        ));

                                                        context.pushNamed(
                                                            TermsandconditionsbusinessWidget
                                                                .routeName);
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '6pxky8wp' /* Complete Profile */,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 230.0,
                                                        height: 50.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Color(0xFFA74DC9),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .textColor,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'buttonOnPageLoadAnimation1']!);
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/htdvtxg4fwwp/AMETHPAY_rESERVED_%C2%A9_2025._(1).png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            if (responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ))
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/WhatsApp_Image_2024-07-09_at_23.29.54_(1).jpeg',
                    ).image,
                  ),
                ),
                child: Form(
                  key: _model.formKey2,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          decoration: BoxDecoration(),
                        ),
                        DragTarget<String>(
                          builder: (context, _, __) {
                            return Container(
                              decoration: BoxDecoration(),
                            );
                          },
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 16.0, 16.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 30.0, 0.0, 10.0),
                                                child: Text(
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                    'cxh66f1r' /* Complete Profile */,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 10.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF262D34),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFFA74DC9),
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(2.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            maxHeight: 5000.00,
                                                            allowPhoto: true,
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .darkBackground,
                                                            textColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .textColor,
                                                            pickerFontFamily:
                                                                'Lexend Deca',
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading_uploadDataRkh =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                            originalFilename:
                                                                                m.originalFilename,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
                                                                  (m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                ),
                                                              ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                            } finally {
                                                              _model.isDataUploading_uploadDataRkh =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile_uploadDataRkh =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadDataRkh =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              return;
                                                            }
                                                          }
                                                        },
                                                        child: Container(
                                                          width: 100.0,
                                                          height: 100.0,
                                                          clipBehavior:
                                                              Clip.antiAlias,
                                                          decoration:
                                                              BoxDecoration(
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: Image.network(
                                                            valueOrDefault<
                                                                String>(
                                                              _model
                                                                  .uploadedFileUrl_uploadDataRkh,
                                                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/1wywv4yl7r1i/Sem_nome_%5BTamanho_original%5D_(1).png',
                                                            ),
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'circleImageOnPageLoadAnimation2']!),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '70eexaey' /* Upload a photo for us to easil... */,
                                                ),
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation2']!),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(420.0, 20.0,
                                                          420.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .companyNameTextController2,
                                                      focusNode: _model
                                                          .companyNameFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'qdyhmnh4' /* Company Name */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'kmyrgvww' /* Name of Your Company */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      validator: _model
                                                          .companyNameTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        if (!isAndroid &&
                                                            !isiOS)
                                                          TextInputFormatter
                                                              .withFunction(
                                                                  (oldValue,
                                                                      newValue) {
                                                            return TextEditingValue(
                                                              selection: newValue
                                                                  .selection,
                                                              text: newValue
                                                                  .text
                                                                  .toCapitalization(
                                                                      TextCapitalization
                                                                          .none),
                                                            );
                                                          }),
                                                      ],
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textFieldOnPageLoadAnimation13']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .companyRegistrationNumberTextController2,
                                                  focusNode: _model
                                                      .companyRegistrationNumberFocusNode2,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'ijtjry6g' /* Company Registration Number */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'wxujmpzx' /* Registration number of your co... */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .companyRegistrationNumberTextController2Validator
                                                      .asValidator(context),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation14']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      final selectedMedia =
                                                          await selectMediaWithSourceBottomSheet(
                                                        context: context,
                                                        maxHeight: 5000.00,
                                                        allowPhoto: true,
                                                        includeDimensions: true,
                                                      );
                                                      if (selectedMedia !=
                                                              null &&
                                                          selectedMedia.every((m) =>
                                                              validateFileFormat(
                                                                  m.storagePath,
                                                                  context))) {
                                                        safeSetState(() => _model
                                                                .isDataUploading_uploadDataY9o =
                                                            true);
                                                        var selectedUploadedFiles =
                                                            <FFUploadedFile>[];

                                                        var downloadUrls =
                                                            <String>[];
                                                        try {
                                                          selectedUploadedFiles =
                                                              selectedMedia
                                                                  .map((m) =>
                                                                      FFUploadedFile(
                                                                        name: m
                                                                            .storagePath
                                                                            .split('/')
                                                                            .last,
                                                                        bytes: m
                                                                            .bytes,
                                                                        height: m
                                                                            .dimensions
                                                                            ?.height,
                                                                        width: m
                                                                            .dimensions
                                                                            ?.width,
                                                                        blurHash:
                                                                            m.blurHash,
                                                                        originalFilename:
                                                                            m.originalFilename,
                                                                      ))
                                                                  .toList();

                                                          downloadUrls =
                                                              (await Future
                                                                      .wait(
                                                            selectedMedia.map(
                                                              (m) async =>
                                                                  await uploadData(
                                                                      m.storagePath,
                                                                      m.bytes),
                                                            ),
                                                          ))
                                                                  .where((u) =>
                                                                      u != null)
                                                                  .map(
                                                                      (u) => u!)
                                                                  .toList();
                                                        } finally {
                                                          _model.isDataUploading_uploadDataY9o =
                                                              false;
                                                        }
                                                        if (selectedUploadedFiles
                                                                    .length ==
                                                                selectedMedia
                                                                    .length &&
                                                            downloadUrls
                                                                    .length ==
                                                                selectedMedia
                                                                    .length) {
                                                          safeSetState(() {
                                                            _model.uploadedLocalFile_uploadDataY9o =
                                                                selectedUploadedFiles
                                                                    .first;
                                                            _model.uploadedFileUrl_uploadDataY9o =
                                                                downloadUrls
                                                                    .first;
                                                          });
                                                        } else {
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                      }
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: CachedNetworkImage(
                                                        fadeInDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        fadeOutDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        imageUrl:
                                                            valueOrDefault<
                                                                String>(
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.copyofcompanyregistration,
                                                              ''),
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/iescy38l5sqg/Inserir_um_t%C3%ADtulo_(3).png',
                                                        ),
                                                        width: 397.0,
                                                        height: 60.0,
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'imageOnPageLoadAnimation3']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .companysAdressTextController2,
                                                  focusNode: _model
                                                      .companysAdressFocusNode2,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'c2x3shhi' /* Company's Adress */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'qem6m6vl' /* Your Company Address */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lexend(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .companysAdressTextController2Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation15']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .companyAddressNumberTextController2,
                                                  focusNode: _model
                                                      .companyAddressNumberFocusNode2,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      's7hva4fc' /* Company Address Number */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '0omcqgtj' /* Your Company Address Number */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lexend(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .companyAddressNumberTextController2Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation16']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .cityofYourCompanyTextController2,
                                                  focusNode: _model
                                                      .cityofYourCompanyFocusNode2,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'yoinx18s' /* Company City */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'jc6zrqsy' /* City of Your Company */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lexend(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .cityofYourCompanyTextController2Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation17']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .countryofYourCompanyValueController2 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u7l2ioa5' /* Afghanistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ro4dpn8q' /* Albania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c6onx3of' /* Algeria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qls765wh' /* Andorra */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r9dzochb' /* Angola */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cz4i409k' /* Antigua and Barbuda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sxeojs18' /* Argentina */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yxn6grn2' /* Armenia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '88b5xxjh' /* Australia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ggoaajve' /* Austria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h097glrb' /* Azerbaijan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dh5xbq9c' /* Bahamas */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ur39m82b' /* Bahrain */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bl6c64r6' /* Bangladesh */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9jiju26v' /* Barbados */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0zjh4tuf' /* Belarus */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'shu9fyhy' /* Belgium */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's2p3va5e' /* Belize */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c6a4qmoc' /* Benin */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '78waabc0' /* Bhutan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ew21fqyh' /* Bolivia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cxjc8nh3' /* Bosnia and Herzegovina */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rh5ng3qx' /* Botswana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6ka663gv' /* Brazil */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'owie8fye' /* Brunei */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ibfnin0c' /* Bulgaria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9zdmndye' /* Burkina Faso */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vy5wgy8m' /* Burundi */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ymscr49n' /* Cabo Verde */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7foorw13' /* Cambodia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rrpgh159' /* Cameroon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xuwgbugd' /* Canada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jtfapneu' /* Central African Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v8xz6w9x' /* Chad */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '19dxbx5t' /* Chile */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gmnpd1vq' /* China */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '08ra2s2i' /* Colombia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j1ixtl0b' /* Comoros */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c9p8veb4' /* Congo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '27aeqyqq' /* Costa Rica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h7akit9c' /* Croatia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k2yx1wed' /* Cuba */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'buynz27s' /* Cyprus */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ae7cu4s9' /* Czech Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4s6cgro5' /* Denmark */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zsmk05t2' /* Djibouti */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l1x4pc3j' /* Dominica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a19cs62f' /* Dominican Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bypo1feg' /* East Timor (Timor-Leste) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'toyufrbb' /* Ecuador */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qm9g6p0f' /* Egypt */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wpny9d0t' /* El Salvador */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ixb7mi1h' /* Equatorial Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9oua8oqh' /* Eritrea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8ullcivj' /* Estonia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'thnhjlsv' /* Eswatini */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pu28bjdn' /* Ethiopia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4kqcpxg9' /* Fiji */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dfj50apd' /* Finland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9oav0e9q' /* France */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ojf99g34' /* Gabon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hx6dfvay' /* Gambia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dnteq1e5' /* Georgia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mndtd5om' /* Germany */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b96xjx5w' /* Ghana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c2l82so8' /* Greece */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nxwb5p6m' /* Grenada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jaomdhjn' /* Guatemala */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xl2mv1ne' /* Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cy85jy2v' /* Guinea-Bissau */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yn5usbti' /* Guyana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'whi9uyf9' /* Haiti */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bjj8di2e' /* Honduras */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1vh603my' /* Hungary */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u6f8fyp0' /* Iceland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vp3b53ie' /* India */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c9oypuha' /* Indonesia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lgm1qqrb' /* Iran */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xqocje12' /* Iraq */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wickse4b' /* Ireland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'djvbmcb1' /* Israel */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bahpei00' /* Italy */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '92bw0hbr' /* Ivory Coast */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jpp598th' /* Jamaica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'atbwe09s' /* Japan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cow9c4gw' /* Jordan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '98ic03ln' /* Kazakhstan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bliwlqo4' /* Kenya */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r92o8kwd' /* Kiribati */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nwtmzufx' /* Korea, North */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8uywheww' /* Korea, South */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '43ne3swc' /* Kosovo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y7cj3m7g' /* Kuwait */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hzkqv42f' /* Kyrgyzstan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kf168fab' /* Laos */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'inou7qds' /* Latvia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '911gn8dq' /* Lebanon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wpswnml9' /* Lesotho */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '57ljzdga' /* Liberia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cisndy10' /* Libya */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4pnvhd64' /* Liechtenstein */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zq2jop4e' /* Lithuania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tecgqv2q' /* Luxembourg */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hij961sv' /* Madagascar */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2vihk4d5' /* Malawi */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vwrjsfay' /* Malaysia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'auxzfadq' /* Maldives */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zlpbtwlz' /* Mali */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ld22kqzf' /* Malta */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'eo102ze1' /* Marshall Islands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xcoplv30' /* Mauritania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'iqw6leid' /* Mauritius */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1ze86k6v' /* Mexico */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c4xyd2aw' /* Micronesia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kiqu6t5m' /* Moldova */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yuyoqwyn' /* Monaco */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mv8djjd8' /* Mongolia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8awofplu' /* Montenegro */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6dsn7g1d' /* Morocco */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fsieeotk' /* Mozambique */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ljp5dqll' /* Myanmar (Burma) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r5kv1n8b' /* Namibia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ry3avlki' /* Nauru */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lk6j98mf' /* Nepal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xx0nbd1p' /* Netherlands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rs0ygvw7' /* New Zealand */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oc35re9c' /* Nicaragua */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'w5pj2zqf' /* Niger */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'odo3werq' /* Nigeria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ob32mkk6' /* North Macedonia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tojoq9hy' /* Norway */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4d3b71yp' /* Oman */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yksjfpmg' /* Pakistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jaiy625m' /* Palau */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fcvqsei9' /* Panama */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fme76q53' /* Papua New Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'thqlkzyq' /* Paraguay */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wun4qq88' /* Peru */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'unazytyl' /* Philippines */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x3c5g7zj' /* Poland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '52e17o9y' /* Portugal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p1guh4my' /* Qatar */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zrhn4lst' /* Romania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yzky23ym' /* Russia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's713jir3' /* Rwanda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qjeyij1n' /* Saint Kitts and Nevis */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cb2nep16' /* Saint Lucia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '15y6k9zq' /* Saint Vincent and the Grenadin... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'afpgq5v6' /* Samoa */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '06mky8y9' /* San Marino */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '97ipqcqn' /* Sao Tome and Principe */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o3dnzcnm' /* Saudi Arabia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hvbmky1y' /* Senegal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ec4se3mh' /* Serbia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vvgkc9kd' /* Seychelles */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vjieua77' /* Sierra Leone */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'srh7la3l' /* Singapore */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jm2e2plo' /* Slovakia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6dvnyno9' /* Slovenia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zmljd6uk' /* Solomon Islands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4s178lii' /* Somalia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a1kbeiqo' /* South Africa */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'myitj6j7' /* South Sudan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cf8l822v' /* Spain */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'os7xhlxx' /* Sri Lanka */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'en07lzun' /* Sudan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5khfdkuf' /* Suriname */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4c4dz3aq' /* Sweden */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mh2k2gh0' /* Switzerland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rh3d2yj4' /* Syria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o5bcelyh' /* Taiwan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n3o0uimr' /* Tajikistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '49zjeki9' /* Tanzania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l0loecvu' /* Thailand */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nhmaju6q' /* Togo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wsa2wa3y' /* Tonga */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z7zp5jdp' /* Trinidad and Tobago */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't4ktb535' /* Tunisia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hxdqtgo2' /* Turkey */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cy082ec9' /* Turkmenistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lwhoe19g' /* Tuvalu */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qgkcd9d5' /* Uganda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4lph8gz2' /* Ukraine */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n8pr1oa1' /* United Arab Emirates */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7xw19wxf' /* United Kingdom */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4chox0jq' /* United States */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sccx40mx' /* Uruguay */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3k54qnot' /* Uzbekistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p2amuki6' /* Vanuatu */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'umtvikgl' /* Vatican City */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '183as9f4' /* Venezuela */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l78ngskb' /* Vietnam */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6f6ey4rc' /* Yemen */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vyaer3xb' /* Zambia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tyblzqsj' /* Zimbabwe */,
                                                    )
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .countryofYourCompanyValue2 =
                                                          val),
                                                  height: 80.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'i3nm2iqx' /* Country of Your Company */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: Color(0xFF8B97A2),
                                                    size: 15.0,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2.0,
                                                  borderColor: Colors.white,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                  labelText: '',
                                                  labelTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 15.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'dropDownOnPageLoadAnimation4']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .companyZipCodeTextController2,
                                                  focusNode: _model
                                                      .companyZipCodeFocusNode2,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '5rru5hst' /* Company Zip Code */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'm7orq5lq' /* Your Company's Zip Code */,
                                                    ),
                                                    hintStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodySmall
                                                            .override(
                                                              font: GoogleFonts
                                                                  .lexend(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: 15.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                            ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .companyZipCodeTextController2Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation18']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .firstNameTextController2,
                                                  focusNode: _model
                                                      .firstNameFocusNode2,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '4da96ruo' /* First Name */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'rx7o2xhn' /* Your Name */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .firstNameTextController2Validator
                                                      .asValidator(context),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation19']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .lastNameTextController2,
                                                  focusNode:
                                                      _model.lastNameFocusNode2,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'wexo8wt4' /* Last Name */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                    alignLabelWithHint: false,
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'hskjs4tw' /* Your Last Name */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.white,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .lastNameTextController2Validator
                                                      .asValidator(context),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation20']!),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(420.0, 20.0,
                                                          420.0, 0.0),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        1.0,
                                                    child: TextFormField(
                                                      controller: _model
                                                          .dateofbirthTextController2,
                                                      focusNode: _model
                                                          .dateofbirthFocusNode2,
                                                      textCapitalization:
                                                          TextCapitalization
                                                              .none,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'c3z71dgg' /* Date of Birth */,
                                                        ),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'ite1e9zp' /* Date of Your Birth */,
                                                        ),
                                                        hintStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        errorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        focusedErrorBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Color(
                                                                0x00000000),
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                        ),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        contentPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    24.0,
                                                                    20.0,
                                                                    24.0),
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: Color(
                                                                    0xFF8B97A2),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                      keyboardType:
                                                          TextInputType.number,
                                                      validator: _model
                                                          .dateofbirthTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model.dateofbirthMask2
                                                      ],
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textFieldOnPageLoadAnimation21']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .nationalitValueController1 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zrvo8rzr' /* Afghanistan (+93) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1ethx0ax' /* Albania (+355) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a43srzx8' /* Algeria (+213) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qe7cogpw' /* Andorra (+376) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7l06uclr' /* Angola (+244) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vlia3li2' /* Antigua and Barbuda (+1 264) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9r9959ds' /* Argentina (+54) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zv69fk4u' /* Armenia (+374) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tz4kqjym' /* Australia (+61) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't7t41ud1' /* Austria (+43) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sfvwj9p9' /* Azerbaijan (+994) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uojiv69s' /* Bahamas (+1 242) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ofcsrut5' /* Bahrain (+973) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bfp77n1g' /* Bangladesh (+880) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l4do638r' /* Barbados (+1246) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j6nwa6pv' /* Belarus (+375) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1eo31rh8' /* Belgium (+32) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ie134ma9' /* Belize (+501) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rprlylfi' /* Benin (+229) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yxjiujn6' /* Bhutan (+975) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hstahmbx' /* Bolivia (+591) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k5dks8ps' /* Bosnia and Herzegovina (+387) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k4twrrub' /* Botswana (+267) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qz7bhnfj' /* Brazil (+55) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6igh6b1z' /* Brunei Darussalam (+673) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v9f4z69c' /* Bulgaria (+359) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's5mqprhh' /* Burkina Faso (+226) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wcf0t0a0' /* Burundi (+257) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '23o80xva' /* Cape Verde (+238) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tp2i8dod' /* Cambodia (+855) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gl86uleb' /* Cameroon (+237) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kddscs8x' /* Canada (+1) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bwofltzj' /* Central African Republic (+236... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm5lfthyq' /* Chad (+235) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ti8uqoka' /* Chile (+56) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'em4zr8ji' /* China (+86) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5rcz5a7j' /* Colombia (+57) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6e2hgmpt' /* Comoros (+269) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gp81ghi1' /* Congo (+242) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lh4z8zfz' /* Costa Rica (+506) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o7w0pmg8' /* Croatia (+385) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ogi2o7lu' /* Cuba (+53) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wujvchih' /* Cyprus (+357) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h2okkpf2' /* Czech Republic (+420) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't9pz6c8q' /* Denmark (+45) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1dnnyj4l' /* Djibouti (+253) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tdvlpc2y' /* Dominica (+1 767) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2f74amv0' /* Dominican Republic (+1 809) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e6y5bm82' /* Ecuador (+593) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'aquuyhdw' /* Egypt (+20) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k00udt0j' /* El Salvador (+503) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rjdqvbch' /* Equatorial Guinea (+240) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cj5mrtnm' /* Eritrea (+291) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fiu7rmji' /* Estonia (+372) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tg94fkpa' /* Estonia (+372) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v5zujmmi' /* Ethiopia (+251) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0sjg5qlj' /* Fiji (+679) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ffz9z7q2' /* Finland (+358) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'v0nnm82h' /* France (+33) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4hp09sos' /* Gabon (+241) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't80ejjck' /* Gambia (+220) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ssaq50bo' /* Georgia (+995) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3cnoohnn' /* Germany (+49) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd9e31hkr' /* Ghana (+233) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ovbiu1qk' /* Greece (+30) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rv8vvbpa' /* Grenada (+1 473) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd8eamoia' /* Guatemala (+502) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2clqta0b' /* Guinea (+224) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bwpnquml' /* Guinea-Bissau (+245) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o38dkr76' /* Guyana (+592) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ylu3n6oq' /* Haiti (+509) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hy8st2er' /* Honduras (+504) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'q1dqa37z' /* Hungary (+36) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ndlowl6n' /* Iceland (+354) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z87t8b84' /* India (+91) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't1wmwgt1' /* Indonesia (+62) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9o7y1c2p' /* Iran (+98) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wiudm04s' /* Iraq (+964) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uuqceif5' /* Ireland (+353) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ok99trls' /* Israel (+972) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2efrt1jm' /* Italy (+39) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8emkqx3r' /* Jamaica (+1 876) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'abbe5xvp' /* Japan (+81) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8u7sq1v6' /* Jordan (+962) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b91e0lf1' /* Kazakhstan (+7) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xntoneop' /* Kenya (+254) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2nkmrx4g' /* Kiribati (+686) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dvz83h6i' /* Korea, North (+850) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ycq84vnu' /* Korea, South (+82) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hzbvxevv' /* Kuwait (+965) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o05dcbuj' /* Kyrgyzstan (+996) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ur9vft4q' /* Laos (+856) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9f8x9gcl' /* Latvia (+371) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2u0ysmfw' /* Lebanon (+961) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4sjgvq81' /* Lesotho (+266) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dpt0rwun' /* Liberia (+231) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'f6lqyjkq' /* Libya (+218) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a6b7t6ut' /* Liechtenstein (+423) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3zp0fn0z' /* Lithuania (+370) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8f1jp6bk' /* Luxembourg (+352) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gbhqsw51' /* Madagascar (+261) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'w96igg3m' /* Malawi (+265) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7v2rb78u' /* Malaysia (+60) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vr5iic0w' /* Maldives (+960) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l8sxxzl8' /* Mali (+223) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rtes7i0f' /* Malta (+356) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ic8b3p2o' /* Marshall Islands (+692) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jqy0du6z' /* Mauritania (+222) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vfnwkrnh' /* Mauritius (+230) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3cklu5l5' /* Mexico (+52) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h6bx42i2' /* Micronesia (+691) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o7g3ls5q' /* Moldova (+373) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9ljeonsk' /* Monaco (+377) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3ekjg5uy' /* Mongolia (+976) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's99s5xx5' /* Montenegro (+382) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oimiu9tv' /* Morocco (+212) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ku5vx9mm' /* Mozambique (+258) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'q148cokd' /* Myanmar (+95) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '341a0ok3' /* Namibia (+264) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '74zcopq0' /* Nauru (+674) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0pt7qlf1' /* Nepal (+977) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kjsnfk78' /* Netherlands (+31) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      's68ezlh8' /* New Zealand (+64) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y5zswdkc' /* Nicaragua (+505) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pv3d2rvd' /* Niger (+227) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8l18x5wo' /* Nigeria (+234) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2n2xvz25' /* North Macedonia (+389) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h7ubjmtu' /* Norway (+47) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zt6i8et8' /* Oman (+968) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yeqv2uhs' /* Pakistan (+92) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fk41ok2a' /* Palau (+680) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5nqk3ul0' /* Panama (+507) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0yvnszfk' /* Papua New Guinea (+675) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gudqwko8' /* Paraguay (+595) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y48so4p6' /* Peru (+51) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'du7drfho' /* Philippines (+63) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5m1sxaw1' /* Poland (+48) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fxg5lo0o' /* Portugal (+351) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tt2p42id' /* Qatar (+974) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lfbk2asj' /* Romania (+40) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4st3z5bk' /* Russia (+7) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd1y8h186' /* Rwanda (+250) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zbkspfgd' /* Saint Kitts and Nevis (+1 869) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k6ivge15' /* Saint Lucia (+1 758) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ic3zs32b' /* Saint Vincent and the Grenadin... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6nh24mfo' /* Samoa (+685) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0osjp3po' /* San Marino (+378) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3bu807pb' /* Sao Tome and Principe (+239) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0rulr84e' /* Saudi Arabia (+966) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fhyy4nq5' /* Senegal (+221) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hagh5bu1' /* Serbia (+381) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qcdoaktq' /* Seychelles (+248) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0ueeo6ch' /* Sierra Leone (+232) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'oygxow67' /* Singapore (+65) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8icq3fcb' /* Slovakia (+421) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cwprslml' /* Slovenia (+386) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sh71kumn' /* Solomon Islands (+677) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'y6ttruhk' /* Somalia (+252) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nebzmxk4' /* South Africa (+27) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0y7alsxp' /* South Sudan (+211) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'urwfbn3w' /* Spain (+34) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'flsh67h1' /* Sri Lanka (+94) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qvy34m66' /* Sudan (+249) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'he5zkk4s' /* Suriname (+597) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3wg3ps5q' /* Sweden (+46) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cq9iwmt0' /* Switzerland (+41) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5e32r9jb' /* Syria (+963) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jonrwt2g' /* Taiwan (+886) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ycriph43' /* Tajikistan (+992) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'w4eequjg' /* Tanzania (+255) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j58yg0v2' /* Thailand (+66) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '51slq62p' /* Togo (+228) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jxzzmue5' /* Tonga (+676) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jn6vddim' /* Trinidad and Tobago (+1 868) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k51mbrds' /* Tunisia (+216) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ia7q2zwk' /* Turkey (+90) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2t7k2gr7' /* Turkmenistan (+993) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'egr05vfg' /* Tuvalu (+688) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fl7z8lqc' /* Uganda (+256) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '13bmimyh' /* Ukraine (+380) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ynrm7zk1' /* United Arab Emirates (+971) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9xkamc6f' /* United Kingdom (+44) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b5h4frt8' /* United States of America (+1) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lcf5jk0l' /* Uruguay (+598) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7b899rkn' /* Uzbekistan (+998) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0x0fs9eo' /* Vanuatu (+678) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p1yj7zyk' /* Venezuela (+58) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k1dmuo2z' /* Vietnam (+84) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'alz1n4t8' /* Yemen (+967) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'n2cp61fj' /* Zambia (+260) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bvya0gvr' /* Zimbabwe (+263) */,
                                                    )
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .nationalitValue1 =
                                                          val),
                                                  height: 70.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'p0urdr18' /* Area Code */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: Color(0xFF8B97A2),
                                                    size: 15.0,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2.0,
                                                  borderColor: Colors.white,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 11.0,
                                                          16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                  labelText: '',
                                                  labelTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'dropDownOnPageLoadAnimation5']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .cellphoneTextController2,
                                                  focusNode: _model
                                                      .cellphoneFocusNode2,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '73enije5' /* Cell Phone */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'bsvyvmn0' /* Your Cell Phone */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .cellphoneTextController2Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation22']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .nationalitValueController2 ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options: [
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'k881uksg' /* Afghanistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'p249tqd3' /* Albania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'z8u7ryk0' /* Algeria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '85cpc2vs' /* Andorra */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '50itsz4q' /* Angola */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0sj1acew' /* Antigua and Barbuda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4nu7azjx' /* Argentina */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fadh4ocu' /* Armenia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kss16tv4' /* Australia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c065740r' /* Austria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gpmsxzlo' /* Azerbaijan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7bd00dqm' /* Bahamas */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dz513gw7' /* Bahrain */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7nhyi8fk' /* Bangladesh */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '29kkj8y0' /* Barbados */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qw5mxfpc' /* Belarus */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gns61suv' /* Belgium */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ivi386py' /* Belize */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6vvkzrxy' /* Benin */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l6x15u40' /* Bhutan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6ia9d4vi' /* Bolivia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't3qjouz0' /* Bosnia and Herzegovina */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ixsj0r8h' /* Botswana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4cd1gor6' /* Brazil */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rtgjc8f9' /* Brunei */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ud64lilp' /* Bulgaria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'abkp9uy0' /* Burkina Faso */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '98apclmk' /* Burundi */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6kgsvopu' /* Cabo Verde */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'a6nvdt8y' /* Cambodia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jnsv3v81' /* Cameroon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4zqnfb2d' /* Canada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cckchnkc' /* Central African Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '009qqt30' /* Chad */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      't1nnx8wr' /* Chile */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3m11syx0' /* China */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '18b3xf8b' /* Colombia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6xp4i95u' /* Comoros */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'w4j192k6' /* Congo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rsk5q6s9' /* Costa Rica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'roevl4hg' /* Croatia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'tb77zbk2' /* Cuba */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cxccfszk' /* Cyprus */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'svukw5mz' /* Czech Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ngpqpbmh' /* Denmark */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'djkslvef' /* Djibouti */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nvojh3sh' /* Dominica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lw1xy91v' /* Dominican Republic */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '420g9t8v' /* East Timor (Timor-Leste) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '0kxg9wbx' /* Ecuador */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3bjeavvo' /* Egypt */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rc48p9ce' /* El Salvador */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'hysmgqzn' /* Equatorial Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bo4patxh' /* Eritrea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mc95edzq' /* Estonia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4ql6asqm' /* Eswatini */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l95kwhjf' /* Ethiopia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'egsjglm7' /* Fiji */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jsni54zs' /* Finland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'sdk6xvub' /* France */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pj0o2f9q' /* Gabon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'uipufhnr' /* Gambia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '03j4u6u2' /* Georgia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8qapapod' /* Germany */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kggwbqix' /* Ghana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qd30nj58' /* Greece */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qsv5mktc' /* Grenada */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ept6ixe5' /* Guatemala */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zjnni6ws' /* Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pm5djzd9' /* Guinea-Bissau */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b0v73hev' /* Guyana */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2mmpts6a' /* Haiti */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '352vv3va' /* Honduras */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r9ig6ofk' /* Hungary */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1bz1hwsd' /* Iceland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jgwwybra' /* India */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3nr5mpn6' /* Indonesia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ta7k5662' /* Iran */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8fmi4gbm' /* Iraq */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kyxaocw1' /* Ireland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'x126buqz' /* Israel */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '846h7cec' /* Italy */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '84o7lki8' /* Ivory Coast */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6877vdar' /* Jamaica */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gey86fkl' /* Japan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xlodnnii' /* Jordan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4ssxnq1d' /* Kazakhstan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yw0wsjby' /* Kenya */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gpqwwt3t' /* Kiribati */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'fufpcy2i' /* Korea, North */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u02axfjx' /* Korea, South */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wiosmwkh' /* Kosovo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pskak61o' /* Kuwait */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bk0rztm3' /* Kyrgyzstan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'yncxxuzc' /* Laos */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'bm0bp8dl' /* Latvia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pp5k3din' /* Lebanon */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8hqj7r0k' /* Lesotho */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6jxmk1tp' /* Liberia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'njl3o73f' /* Libya */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7yc1tntc' /* Liechtenstein */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zpsde9qk' /* Lithuania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ydhxub5q' /* Luxembourg */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '571ubn0o' /* Madagascar */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ator2fpz' /* Malawi */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pj89apx5' /* Malaysia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '3qydnjoc' /* Maldives */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xkjr1svy' /* Mali */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'efj5s4xg' /* Malta */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '4hp3i1ab' /* Marshall Islands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7fmchlwj' /* Mauritania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xtvzozsv' /* Mauritius */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1okuwrhw' /* Mexico */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'u0it0q0l' /* Micronesia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ia6ixgbp' /* Moldova */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '446yxegp' /* Monaco */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'd9x4bxos' /* Mongolia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ri4x9v7h' /* Montenegro */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'brzr8fua' /* Morocco */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'aqw50fv0' /* Mozambique */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h9s0vkxn' /* Myanmar (Burma) */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5fx2nw6l' /* Namibia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o0c95zzf' /* Nauru */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'jtgxw9fw' /* Nepal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'mt4e5e86' /* Netherlands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ubtocqob' /* New Zealand */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2lroxj1d' /* Nicaragua */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '31g7n0k9' /* Niger */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qh5x8cdk' /* Nigeria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'orpjy25f' /* North Macedonia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'chnkt3w9' /* Norway */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vl6rdxzz' /* Oman */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pwp175ai' /* Pakistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pmiry5vc' /* Palau */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'r0h17y6o' /* Panama */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lbfraoxo' /* Papua New Guinea */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kdkrnlui' /* Paraguay */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'iihlbtbr' /* Peru */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'nrdz7bp8' /* Philippines */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8mvq8v40' /* Poland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '2ej2hpg3' /* Portugal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'o5ta2aeu' /* Qatar */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vahnrkqi' /* Romania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5zyqrfes' /* Russia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kvs7rilq' /* Rwanda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'l24z3lm0' /* Saint Kitts and Nevis */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '1vf30grj' /* Saint Lucia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qkhqtwwo' /* Saint Vincent and the Grenadin... */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6s9zdfv0' /* Samoa */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cg0vjiue' /* San Marino */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'wm63o4xc' /* Sao Tome and Principe */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'slm4g9ei' /* Saudi Arabia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'b60rx9lc' /* Senegal */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'g844v02r' /* Serbia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5ux5t7zy' /* Seychelles */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6wjkndg6' /* Sierra Leone */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cfel1ha5' /* Singapore */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'h57x9by8' /* Slovakia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm1gedluc' /* Slovenia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'pc0baat3' /* Solomon Islands */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'kd4swmmx' /* Somalia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ouke39qd' /* South Africa */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'am9wk0ur' /* South Sudan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xojgnu8z' /* Spain */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lyl7qboi' /* Sri Lanka */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'smj2uyzm' /* Sudan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'asuyp7b3' /* Suriname */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'cvt1tepd' /* Sweden */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xueahgpn' /* Switzerland */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'xy9mxe73' /* Syria */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lxiap3sf' /* Taiwan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ctghtw5y' /* Tajikistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'lc9xtpyn' /* Tanzania */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8vpx68wr' /* Thailand */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'gqu59w5g' /* Togo */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'e4cshnxa' /* Tonga */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5tayzpgo' /* Trinidad and Tobago */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'aqa3orn3' /* Tunisia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'ovimgrvr' /* Turkey */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'py8202h4' /* Turkmenistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'm53dhf9o' /* Tuvalu */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'zw374h5q' /* Uganda */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'afg3fnzo' /* Ukraine */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vcj7l630' /* United Arab Emirates */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'vguhjpw7' /* United Kingdom */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'eujqjr4d' /* United States */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '9ebrd90l' /* Uruguay */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'c7uom3ui' /* Uzbekistan */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '5r6ui7vb' /* Vanuatu */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'qmv55esn' /* Vatican City */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'j5zrcx37' /* Venezuela */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '8gpess5b' /* Vietnam */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '996lzq0b' /* Yemen */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'rf1spyru' /* Zambia */,
                                                    ),
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '6hvdwtid' /* Zimbabwe */,
                                                    )
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                              .nationalitValue2 =
                                                          val),
                                                  height: 80.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  hintText: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'kanq2144' /* Nationality */,
                                                  ),
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: Color(0xFF8B97A2),
                                                    size: 15.0,
                                                  ),
                                                  fillColor: Colors.white,
                                                  elevation: 2.0,
                                                  borderColor: Colors.white,
                                                  borderWidth: 2.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(16.0, 16.0,
                                                          16.0, 4.0),
                                                  hidesUnderline: true,
                                                  isOverButton: true,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                  labelText: '',
                                                  labelTextStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMedium
                                                          .override(
                                                            font: GoogleFonts
                                                                .poppins(
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                            ),
                                                            fontSize: 15.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'dropDownOnPageLoadAnimation6']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .passportTextController2,
                                                  focusNode:
                                                      _model.passportFocusNode2,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '4rpawfiq' /* Passport */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      'i5iiehuh' /* Your Passport */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  validator: _model
                                                      .passportTextController2Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    if (!isAndroid && !isiOS)
                                                      TextInputFormatter
                                                          .withFunction(
                                                              (oldValue,
                                                                  newValue) {
                                                        return TextEditingValue(
                                                          selection: newValue
                                                              .selection,
                                                          text: newValue.text
                                                              .toCapitalization(
                                                                  TextCapitalization
                                                                      .none),
                                                        );
                                                      }),
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation23']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 20.0, 20.0, 0.0),
                                                child: AuthUserStreamWidget(
                                                  builder: (context) => InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      final selectedMedia =
                                                          await selectMediaWithSourceBottomSheet(
                                                        context: context,
                                                        maxHeight: 5000.00,
                                                        allowPhoto: true,
                                                        includeDimensions: true,
                                                      );
                                                      if (selectedMedia !=
                                                              null &&
                                                          selectedMedia.every((m) =>
                                                              validateFileFormat(
                                                                  m.storagePath,
                                                                  context))) {
                                                        safeSetState(() => _model
                                                                .isDataUploading_copyofpassportbusiness =
                                                            true);
                                                        var selectedUploadedFiles =
                                                            <FFUploadedFile>[];

                                                        var downloadUrls =
                                                            <String>[];
                                                        try {
                                                          selectedUploadedFiles =
                                                              selectedMedia
                                                                  .map((m) =>
                                                                      FFUploadedFile(
                                                                        name: m
                                                                            .storagePath
                                                                            .split('/')
                                                                            .last,
                                                                        bytes: m
                                                                            .bytes,
                                                                        height: m
                                                                            .dimensions
                                                                            ?.height,
                                                                        width: m
                                                                            .dimensions
                                                                            ?.width,
                                                                        blurHash:
                                                                            m.blurHash,
                                                                        originalFilename:
                                                                            m.originalFilename,
                                                                      ))
                                                                  .toList();

                                                          downloadUrls =
                                                              (await Future
                                                                      .wait(
                                                            selectedMedia.map(
                                                              (m) async =>
                                                                  await uploadData(
                                                                      m.storagePath,
                                                                      m.bytes),
                                                            ),
                                                          ))
                                                                  .where((u) =>
                                                                      u != null)
                                                                  .map(
                                                                      (u) => u!)
                                                                  .toList();
                                                        } finally {
                                                          _model.isDataUploading_copyofpassportbusiness =
                                                              false;
                                                        }
                                                        if (selectedUploadedFiles
                                                                    .length ==
                                                                selectedMedia
                                                                    .length &&
                                                            downloadUrls
                                                                    .length ==
                                                                selectedMedia
                                                                    .length) {
                                                          safeSetState(() {
                                                            _model.uploadedLocalFile_copyofpassportbusiness =
                                                                selectedUploadedFiles
                                                                    .first;
                                                            _model.uploadedFileUrl_copyofpassportbusiness =
                                                                downloadUrls
                                                                    .first;
                                                          });
                                                        } else {
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                      }
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: CachedNetworkImage(
                                                        fadeInDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        fadeOutDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    500),
                                                        imageUrl:
                                                            valueOrDefault<
                                                                String>(
                                                          valueOrDefault(
                                                              currentUserDocument
                                                                  ?.copyofpassport,
                                                              ''),
                                                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/jl9ii6jl7h8b/Copy_Of_Passport.png',
                                                        ),
                                                        width: 397.0,
                                                        height: 60.0,
                                                        fit: BoxFit.fitWidth,
                                                      ),
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'imageOnPageLoadAnimation4']!),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(420.0, 20.0,
                                                        420.0, 0.0),
                                                child: TextFormField(
                                                  controller: _model
                                                      .passportExpirationDateTextController2,
                                                  focusNode: _model
                                                      .passportExpirationDateFocusNode2,
                                                  textCapitalization:
                                                      TextCapitalization.none,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '0o3y9c4l' /* Passport Expiration Date */,
                                                    ),
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      '8df6i94k' /* Expiration Date of Your Passpo... */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .lexend(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .fontStyle,
                                                          ),
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          fontSize: 15.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodySmall
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        UnderlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor: Colors.white,
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                24.0,
                                                                20.0,
                                                                24.0),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font:
                                                            GoogleFonts.lexend(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  keyboardType:
                                                      TextInputType.number,
                                                  validator: _model
                                                      .passportExpirationDateTextController2Validator
                                                      .asValidator(context),
                                                  inputFormatters: [
                                                    _model
                                                        .passportExpirationDateMask2
                                                  ],
                                                ).animateOnPageLoad(animationsMap[
                                                    'textFieldOnPageLoadAnimation24']!),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child:
                                                    StreamBuilder<UsersRecord>(
                                                  stream:
                                                      UsersRecord.getDocument(
                                                          currentUserReference!),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          child:
                                                              SpinKitCubeGrid(
                                                            color: Color(
                                                                0xFFA74DC9),
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                      );
                                                    }

                                                    final buttonLoginUsersRecord =
                                                        snapshot.data!;

                                                    return FFButtonWidget(
                                                      onPressed: () async {
                                                        if (_model.formKey2
                                                                    .currentState ==
                                                                null ||
                                                            !_model.formKey2
                                                                .currentState!
                                                                .validate()) {
                                                          return;
                                                        }
                                                        if (_model
                                                                .uploadedFileUrl_uploadDataRkh
                                                                .isEmpty) {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            maxWidth: 500.00,
                                                            maxHeight: 500.00,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading_uploadDataRkh =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              showUploadMessage(
                                                                context,
                                                                'Uploading file...',
                                                                showLoading:
                                                                    true,
                                                              );
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                            originalFilename:
                                                                                m.originalFilename,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
                                                                  (m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                ),
                                                              ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                            } finally {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .hideCurrentSnackBar();
                                                              _model.isDataUploading_uploadDataRkh =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile_uploadDataRkh =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadDataRkh =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                              showUploadMessage(
                                                                  context,
                                                                  'Success!');
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              showUploadMessage(
                                                                  context,
                                                                  'Failed to upload data');
                                                              return;
                                                            }
                                                          }

                                                          return;
                                                        }
                                                        if ((_model.uploadedLocalFile_uploadDataY9o
                                                                        .bytes ??
                                                                    [])
                                                                .isEmpty) {
                                                          final selectedMedia =
                                                              await selectMediaWithSourceBottomSheet(
                                                            context: context,
                                                            maxWidth: 500.00,
                                                            maxHeight: 500.00,
                                                            allowPhoto: true,
                                                          );
                                                          if (selectedMedia !=
                                                                  null &&
                                                              selectedMedia.every((m) =>
                                                                  validateFileFormat(
                                                                      m.storagePath,
                                                                      context))) {
                                                            safeSetState(() =>
                                                                _model.isDataUploading_uploadDataY9o =
                                                                    true);
                                                            var selectedUploadedFiles =
                                                                <FFUploadedFile>[];

                                                            var downloadUrls =
                                                                <String>[];
                                                            try {
                                                              showUploadMessage(
                                                                context,
                                                                'Uploading file...',
                                                                showLoading:
                                                                    true,
                                                              );
                                                              selectedUploadedFiles =
                                                                  selectedMedia
                                                                      .map((m) =>
                                                                          FFUploadedFile(
                                                                            name:
                                                                                m.storagePath.split('/').last,
                                                                            bytes:
                                                                                m.bytes,
                                                                            height:
                                                                                m.dimensions?.height,
                                                                            width:
                                                                                m.dimensions?.width,
                                                                            blurHash:
                                                                                m.blurHash,
                                                                            originalFilename:
                                                                                m.originalFilename,
                                                                          ))
                                                                      .toList();

                                                              downloadUrls =
                                                                  (await Future
                                                                          .wait(
                                                                selectedMedia
                                                                    .map(
                                                                  (m) async =>
                                                                      await uploadData(
                                                                          m.storagePath,
                                                                          m.bytes),
                                                                ),
                                                              ))
                                                                      .where((u) =>
                                                                          u !=
                                                                          null)
                                                                      .map((u) =>
                                                                          u!)
                                                                      .toList();
                                                            } finally {
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .hideCurrentSnackBar();
                                                              _model.isDataUploading_uploadDataY9o =
                                                                  false;
                                                            }
                                                            if (selectedUploadedFiles
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length &&
                                                                downloadUrls
                                                                        .length ==
                                                                    selectedMedia
                                                                        .length) {
                                                              safeSetState(() {
                                                                _model.uploadedLocalFile_uploadDataY9o =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadDataY9o =
                                                                    downloadUrls
                                                                        .first;
                                                              });
                                                              showUploadMessage(
                                                                  context,
                                                                  'Success!');
                                                            } else {
                                                              safeSetState(
                                                                  () {});
                                                              showUploadMessage(
                                                                  context,
                                                                  'Failed to upload data');
                                                              return;
                                                            }
                                                          }

                                                          return;
                                                        }
                                                        if (_model
                                                                .countryofYourCompanyValue2 ==
                                                            null) {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Enter Your Company Country',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0xFFA74DC9),
                                                            ),
                                                          );
                                                          return;
                                                        }
                                                        if (_model
                                                                .nationalitValue2 ==
                                                            null) {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            SnackBar(
                                                              content: Text(
                                                                'Enter Your Nationality',
                                                                style:
                                                                    TextStyle(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                              ),
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      4000),
                                                              backgroundColor:
                                                                  Color(
                                                                      0xFFA74DC9),
                                                            ),
                                                          );
                                                          return;
                                                        }
                                                        if ((_model.uploadedLocalFile_copyofpassportbusiness
                                                                        .bytes ??
                                                                    [])
                                                                .isEmpty) {
                                                          return;
                                                        }

                                                        await buttonLoginUsersRecord
                                                            .reference
                                                            .update(
                                                                createUsersRecordData(
                                                          photoUrl: _model
                                                              .uploadedFileUrl_uploadDataRkh,
                                                          companyName: _model
                                                              .companyNameTextController2
                                                              .text,
                                                          companyregistrationnumber:
                                                              _model
                                                                  .companyRegistrationNumberTextController2
                                                                  .text,
                                                          copyofcompanyregistration:
                                                              _model
                                                                  .uploadedFileUrl_uploadDataY9o,
                                                          companysadress: _model
                                                              .companysAdressTextController2
                                                              .text,
                                                          companyaddressnumber:
                                                              _model
                                                                  .companyAddressNumberTextController2
                                                                  .text,
                                                          companycity: _model
                                                              .cityofYourCompanyTextController2
                                                              .text,
                                                          companycountry: _model
                                                              .countryofYourCompanyValue2,
                                                          companyzipcode: _model
                                                              .companyZipCodeTextController2
                                                              .text,
                                                          displayName: _model
                                                              .firstNameTextController2
                                                              .text,
                                                          dateofbirth: _model
                                                              .dateofbirthTextController2
                                                              .text,
                                                          phoneNumber: _model
                                                              .cellphoneTextController2
                                                              .text,
                                                          nationality: _model
                                                              .nationalitValue2,
                                                          passportnumber: _model
                                                              .passportTextController2
                                                              .text,
                                                          copyofpassport: _model
                                                              .uploadedFileUrl_copyofpassportbusiness,
                                                          passportexpirationdate:
                                                              _model
                                                                  .passportExpirationDateTextController2
                                                                  .text,
                                                        ));

                                                        context.pushNamed(
                                                            TermsandconditionsbusinessWidget
                                                                .routeName);
                                                      },
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'sjb2bd32' /* Complete Profile */,
                                                      ),
                                                      options: FFButtonOptions(
                                                        width: 230.0,
                                                        height: 50.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Color(0xFFA74DC9),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .lexend(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .textColor,
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30.0),
                                                      ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'buttonOnPageLoadAnimation2']!);
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0.0),
                              bottomRight: Radius.circular(0.0),
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                            ),
                            child: Image.network(
                              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/htdvtxg4fwwp/AMETHPAY_rESERVED_%C2%A9_2025._(1).png',
                              width: MediaQuery.sizeOf(context).width * 0.5,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
