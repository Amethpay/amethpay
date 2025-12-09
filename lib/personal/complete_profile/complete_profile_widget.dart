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
import 'complete_profile_model.dart';
export 'complete_profile_model.dart';

class CompleteProfileWidget extends StatefulWidget {
  const CompleteProfileWidget({
    super.key,
    required this.email,
    required this.password,
    required this.code,
  });

  final String? email;
  final String? password;
  final String? code;

  static String routeName = 'completeProfile';
  static String routePath = '/completeProfile';

  @override
  State<CompleteProfileWidget> createState() => _CompleteProfileWidgetState();
}

class _CompleteProfileWidgetState extends State<CompleteProfileWidget>
    with TickerProviderStateMixin {
  late CompleteProfileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompleteProfileModel());

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
    _model.addressTextController1 ??= TextEditingController();
    _model.addressFocusNode1 ??= FocusNode();

    _model.residencenumberTextController1 ??= TextEditingController();
    _model.residencenumberFocusNode1 ??= FocusNode();

    _model.cityTextController1 ??= TextEditingController();
    _model.cityFocusNode1 ??= FocusNode();

    _model.zIPCodeTextController1 ??= TextEditingController();
    _model.zIPCodeFocusNode1 ??= FocusNode();

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
    _model.addressTextController2 ??= TextEditingController();
    _model.addressFocusNode2 ??= FocusNode();

    _model.residencenumberTextController2 ??= TextEditingController();
    _model.residencenumberFocusNode2 ??= FocusNode();

    _model.cityTextController2 ??= TextEditingController();
    _model.cityFocusNode2 ??= FocusNode();

    _model.zIPCodeTextController2 ??= TextEditingController();
    _model.zIPCodeFocusNode2 ??= FocusNode();

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
      'textFieldOnPageLoadAnimation7': AnimationInfo(
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
      'textFieldOnPageLoadAnimation8': AnimationInfo(
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
      'textFieldOnPageLoadAnimation11': AnimationInfo(
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
      'textFieldOnPageLoadAnimation12': AnimationInfo(
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
      'textFieldOnPageLoadAnimation14': AnimationInfo(
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
      'textFieldOnPageLoadAnimation20': AnimationInfo(
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
            Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 30.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'zdskrw0p' /* Complete Profile */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF262D34),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFA74DC9),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child:
                                                              AuthUserStreamWidget(
                                                            builder: (context) =>
                                                                InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                final selectedMedia =
                                                                    await selectMediaWithSourceBottomSheet(
                                                                  context:
                                                                      context,
                                                                  maxWidth:
                                                                      5000.00,
                                                                  maxHeight:
                                                                      5000.00,
                                                                  allowPhoto:
                                                                      true,
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .darkBackground,
                                                                  textColor: FlutterFlowTheme.of(
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
                                                                      _model.isDataUploading_uploadData6uu =
                                                                          true);
                                                                  var selectedUploadedFiles =
                                                                      <FFUploadedFile>[];

                                                                  var downloadUrls =
                                                                      <String>[];
                                                                  try {
                                                                    selectedUploadedFiles = selectedMedia
                                                                        .map((m) => FFUploadedFile(
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                              height: m.dimensions?.height,
                                                                              width: m.dimensions?.width,
                                                                              blurHash: m.blurHash,
                                                                              originalFilename: m.originalFilename,
                                                                            ))
                                                                        .toList();

                                                                    downloadUrls = (await Future
                                                                            .wait(
                                                                      selectedMedia
                                                                          .map(
                                                                        (m) async => await uploadData(
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
                                                                    _model.isDataUploading_uploadData6uu =
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
                                                                    safeSetState(
                                                                        () {
                                                                      _model.uploadedLocalFile_uploadData6uu =
                                                                          selectedUploadedFiles
                                                                              .first;
                                                                      _model.uploadedFileUrl_uploadData6uu =
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
                                                                clipBehavior: Clip
                                                                    .antiAlias,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Image
                                                                    .network(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    currentUserPhoto,
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
                                                  ),
                                                  Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      'dt2vt40u' /* Upload a photo for us to easil... */,
                                                    ),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation1']!),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .firstNameTextController1,
                                                      focusNode: _model
                                                          .firstNameFocusNode1,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'hn0pvwg9' /* First Name */,
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
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '3fuvhczm' /* Your Name */,
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
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.white,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
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
                                                          .firstNameTextController1Validator
                                                          .asValidator(context),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation1']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .lastNameTextController1,
                                                      focusNode: _model
                                                          .lastNameFocusNode1,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'hb3gu5us' /* Last Name */,
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
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                  ),
                                                                  color: Color(
                                                                      0xFF8B97A2),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'gmk0x1ex' /* Your Last Name */,
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
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.white,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
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
                                                          .lastNameTextController1Validator
                                                          .asValidator(context),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation2']!),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  20.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
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
                                                              'rtf01rb5' /* Date of Birth */,
                                                            ),
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                              '27f6b5qd' /* Date of Your Birth */,
                                                            ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                            fillColor:
                                                                Colors.white,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        24.0,
                                                                        20.0,
                                                                        24.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                              TextInputType
                                                                  .number,
                                                          validator: _model
                                                              .dateofbirthTextController1Validator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            _model
                                                                .dateofbirthMask1
                                                          ],
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textFieldOnPageLoadAnimation3']!),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: 200.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .areaCodeValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v94q9obe' /* Afghanistan (+93) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yb8ofgwz' /* Albania (+355) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sw95weqb' /* Algeria (+213) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '24htstk5' /* Andorra (+376) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lgt2toqh' /* Angola (+244) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h0240tky' /* Antigua and Barbuda (+1 264) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pfpm6awz' /* Argentina (+54) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'soljkkj6' /* Armenia (+374) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1g0k3am6' /* Australia (+61) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gn9uadw7' /* Austria (+43) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rvyf8sez' /* Azerbaijan (+994) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xn2yze1g' /* Bahamas (+1 242) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3hsk6234' /* Bahrain (+973) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hx3oysv0' /* Bangladesh (+880) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i550x7zv' /* Barbados (+1246) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kf7ixh8q' /* Belarus (+375) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ghqbdr9p' /* Belgium (+32) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jc0sdc78' /* Belize (+501) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'abdt8txm' /* Benin (+229) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cz42g6oz' /* Bhutan (+975) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eaie0sq2' /* Bolivia (+591) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u5dbonh7' /* Bosnia and Herzegovina (+387) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xp2r05ha' /* Botswana (+267) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uz29m8sa' /* Brazil (+55) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '162b3l4l' /* Brunei Darussalam (+673) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sgkl039k' /* Bulgaria (+359) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kgnfi5ep' /* Burkina Faso (+226) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rbxxhsf1' /* Burundi (+257) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rkibp34s' /* Cape Verde (+238) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7j3fumnd' /* Cambodia (+855) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cg08s0re' /* Cameroon (+237) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8qvl69wx' /* Canada (+1) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'flpmx26k' /* Central African Republic (+236... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wv93ze3t' /* Chad (+235) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c13yhkts' /* Chile (+56) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3uirts7d' /* China (+86) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm5of0f1l' /* Colombia (+57) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9i9tfms8' /* Comoros (+269) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ky9sd0qv' /* Congo (+242) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iw6f2dy5' /* Costa Rica (+506) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'war8lxqb' /* Croatia (+385) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'px7h7oxq' /* Cuba (+53) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2cmz4a0g' /* Cyprus (+357) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ruyh8t65' /* Czech Republic (+420) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gsyp29vs' /* Denmark (+45) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7ffui63v' /* Djibouti (+253) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8bg8i7md' /* Dominica (+1 767) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't5vbfs3c' /* Dominican Republic (+1 809) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vgt0ghy6' /* Ecuador (+593) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9st1xyh5' /* Egypt (+20) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h8dzkkqx' /* El Salvador (+503) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tg4rmdpk' /* Equatorial Guinea (+240) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '18mo2vaz' /* Eritrea (+291) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v0to7xjy' /* Estonia (+372) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'myrsvy4e' /* Estonia (+372) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ouwymylb' /* Ethiopia (+251) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'emmi91pc' /* Fiji (+679) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'shet1jpq' /* Finland (+358) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2djhqjib' /* France (+33) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '06pafe2d' /* Gabon (+241) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i1evi047' /* Gambia (+220) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ztoaan54' /* Georgia (+995) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qm6jqtq6' /* Germany (+49) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '13a647ik' /* Ghana (+233) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u6y2c1yl' /* Greece (+30) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9q0aasa2' /* Grenada (+1 473) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dn09s7xx' /* Guatemala (+502) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'azisr2t5' /* Guinea (+224) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '01x5yklu' /* Guinea-Bissau (+245) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mff2tex7' /* Guyana (+592) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gwu1nb1l' /* Haiti (+509) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7eflhx05' /* Honduras (+504) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0w5pnx17' /* Hungary (+36) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1o148fz7' /* Iceland (+354) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4lb5svzi' /* India (+91) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nht0rqyi' /* Indonesia (+62) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9mpzwv8k' /* Iran (+98) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p1oi60pq' /* Iraq (+964) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ppg1fom2' /* Ireland (+353) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g04ed8ay' /* Israel (+972) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mlafsssd' /* Italy (+39) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'efo5hdad' /* Jamaica (+1 876) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'el7sbjv5' /* Japan (+81) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd5sipb5c' /* Jordan (+962) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pn37uilm' /* Kazakhstan (+7) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'knels6ty' /* Kenya (+254) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4og06gw0' /* Kiribati (+686) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ooo8ou2a' /* Korea, North (+850) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bz7765ec' /* Korea, South (+82) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'whfyqjnx' /* Kuwait (+965) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3yudh9rx' /* Kyrgyzstan (+996) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nydhtcbq' /* Laos (+856) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sijyxwur' /* Latvia (+371) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fp9x1veh' /* Lebanon (+961) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'duvsuzxy' /* Lesotho (+266) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mmfxh49h' /* Liberia (+231) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9ldlfhpg' /* Libya (+218) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wi4nkc62' /* Liechtenstein (+423) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wmsnhdoo' /* Lithuania (+370) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'l12k7cas' /* Luxembourg (+352) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9j568asc' /* Madagascar (+261) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'td9qv02s' /* Malawi (+265) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9cokc01l' /* Malaysia (+60) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '88k8bc0m' /* Maldives (+960) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e2khtmd2' /* Mali (+223) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0059m0a1' /* Malta (+356) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dsl2d8og' /* Marshall Islands (+692) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fr689ngp' /* Mauritania (+222) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zigk9nzw' /* Mauritius (+230) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cuvj1yu0' /* Mexico (+52) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nu7ctx3u' /* Micronesia (+691) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dw0rkmir' /* Moldova (+373) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xqcz4feo' /* Monaco (+377) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zuui7qss' /* Mongolia (+976) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ebluvzvk' /* Montenegro (+382) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h166qrcj' /* Morocco (+212) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mg0xwq20' /* Mozambique (+258) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5idufgf7' /* Myanmar (+95) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c31uzb08' /* Namibia (+264) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0cg6559f' /* Nauru (+674) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ipusiyl6' /* Nepal (+977) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vv3con5g' /* Netherlands (+31) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '75tay3ck' /* New Zealand (+64) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'korcpjpk' /* Nicaragua (+505) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n5zx9z0x' /* Niger (+227) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '316k5i6m' /* Nigeria (+234) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nzdmigol' /* North Macedonia (+389) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7d5x29gf' /* Norway (+47) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8b72x81o' /* Oman (+968) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c44b6f1o' /* Pakistan (+92) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hh8l3svg' /* Palau (+680) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wdrbn74o' /* Panama (+507) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          're3dvf01' /* Papua New Guinea (+675) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6u6vyjbh' /* Paraguay (+595) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wk1rs55d' /* Peru (+51) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7myz2od0' /* Philippines (+63) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0virr66x' /* Poland (+48) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9bvyhug5' /* Portugal (+351) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vgtgizgi' /* Qatar (+974) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rzo2azjv' /* Romania (+40) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n6hf0f2c' /* Russia (+7) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ipnb7v4f' /* Rwanda (+250) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7f6yj21c' /* Saint Kitts and Nevis (+1 869) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '91b8kgf9' /* Saint Lucia (+1 758) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dmt3stah' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2nfxd772' /* Samoa (+685) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4jpp3972' /* San Marino (+378) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'usemxeoe' /* Sao Tome and Principe (+239) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '411pje04' /* Saudi Arabia (+966) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1ep63iw8' /* Senegal (+221) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gt9wpdrn' /* Serbia (+381) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '29gdi6dr' /* Seychelles (+248) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ur1jnx20' /* Sierra Leone (+232) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ktabbd49' /* Singapore (+65) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1s2vnbj0' /* Slovakia (+421) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c3hjylgm' /* Slovenia (+386) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0s86lvjr' /* Solomon Islands (+677) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jgk71x2v' /* Somalia (+252) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xpbh0slf' /* South Africa (+27) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tbxf8ily' /* South Sudan (+211) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ze7rlirh' /* Spain (+34) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ttssa8fe' /* Sri Lanka (+94) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a56c7ahd' /* Sudan (+249) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1i70vzhi' /* Suriname (+597) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4nyeyns1' /* Sweden (+46) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6a1vigol' /* Switzerland (+41) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'phbcr50u' /* Syria (+963) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ggfa2713' /* Taiwan (+886) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g0aks3xy' /* Tajikistan (+992) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'krrhgiwq' /* Tanzania (+255) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0tmojx69' /* Thailand (+66) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qfxiao0x' /* Togo (+228) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'row9yod1' /* Tonga (+676) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fha2so4m' /* Trinidad and Tobago (+1 868) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2lhqtral' /* Tunisia (+216) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r2b8zxm8' /* Turkey (+90) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '06degc3e' /* Turkmenistan (+993) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mzrls54a' /* Tuvalu (+688) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y297q36r' /* Uganda (+256) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'njr8mjiv' /* Ukraine (+380) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '642j3top' /* United Arab Emirates (+971) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6mr9irgm' /* United Kingdom (+44) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fqc2l7t1' /* United States of America (+1) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7ga50iri' /* Uruguay (+598) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '21c0lx4d' /* Uzbekistan (+998) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ym3g0hxr' /* Vanuatu (+678) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g6qpfft5' /* Venezuela (+58) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qgjln4wp' /* Vietnam (+84) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8txk1bed' /* Yemen (+967) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zplrl7ta' /* Zambia (+260) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mv2vo74d' /* Zimbabwe (+263) */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.areaCodeValue =
                                                                  val),
                                                      height: 70.0,
                                                      textStyle:
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '3m8o9whq' /* Area Code */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 24.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  11.0,
                                                                  16.0,
                                                                  4.0),
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation1']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cellphoneTextController1,
                                                      focusNode: _model
                                                          .cellphoneFocusNode1,
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
                                                          'i4txfd3v' /* Cell Phone */,
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
                                                          'cu8pg2iw' /* Your Cell Phone */,
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
                                                      textAlign:
                                                          TextAlign.start,
                                                      validator: _model
                                                          .cellphoneTextController1Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation4']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .nationalityValueController ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y1bjd9jr' /* Afghanistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ftqpmf56' /* Albania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lqut8cdy' /* Algeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kjyafdub' /* Andorra */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1j3x70kd' /* Angola */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qwsdtk8f' /* Antigua and Barbuda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0j0wjxp5' /* Argentina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nb5refej' /* Armenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fqcsypvu' /* Australia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zt9xtv7e' /* Austria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '41ugp6hg' /* Azerbaijan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'flzrmwaz' /* Bahamas */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3r24rmjq' /* Bahrain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7qohusmn' /* Bangladesh */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r4tzy9n4' /* Barbados */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w86mfa99' /* Belarus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3hmq2pl3' /* Belgium */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'of260ou1' /* Belize */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6fmt96gy' /* Benin */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ued8aacn' /* Bhutan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ni8kqzym' /* Bolivia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rre1bwo1' /* Bosnia and Herzegovina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x3w0enjd' /* Botswana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'l3f9nzzx' /* Brazil */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kzvoud40' /* Brunei */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bntbk8r9' /* Bulgaria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vjj4d222' /* Burkina Faso */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's9qv6pjq' /* Burundi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6qopqoeu' /* Cabo Verde */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fzbhpbx6' /* Cambodia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8qd424ij' /* Cameroon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3gpuzizb' /* Canada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pcigbigi' /* Central African Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hcy3tp0t' /* Chad */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n6ho7wab' /* Chile */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vmhprmej' /* China */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xi5fwdec' /* Colombia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bfssrs2k' /* Comoros */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xxfj6wzs' /* Congo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pfkgb9q4' /* Costa Rica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'upkv8fiw' /* Croatia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dz1mugdf' /* Cuba */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gc7hu4i6' /* Cyprus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4trtk3sk' /* Czech Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vkn0yxfj' /* Denmark */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6e8rt98t' /* Djibouti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zhkgu0kk' /* Dominica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ywg4s6ds' /* Dominican Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '28ro73vy' /* East Timor (Timor-Leste) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4y1ns2sj' /* Ecuador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xhztdo5l' /* Egypt */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4cjfuanr' /* El Salvador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5rdyehls' /* Equatorial Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zvh82s9m' /* Eritrea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x9loemd0' /* Estonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f51dpsg3' /* Eswatini */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'we2mbn8l' /* Ethiopia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lzex4euy' /* Fiji */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'te7sp11m' /* Finland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vhdy8qkb' /* France */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1tkg8uva' /* Gabon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3ydnf7tc' /* Gambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fbv81ftx' /* Georgia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ziak7izr' /* Germany */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'naiszero' /* Ghana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3ku1wcfj' /* Greece */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'td743u6p' /* Grenada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hmo5gg6g' /* Guatemala */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z23st5oz' /* Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm2350ug8' /* Guinea-Bissau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wz3ttbk7' /* Guyana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u2qmkw51' /* Haiti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4qp0slcp' /* Honduras */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ji04wx18' /* Hungary */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sp1xps0m' /* Iceland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wj706tc0' /* India */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0348t6lm' /* Indonesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ms51uy1o' /* Iran */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '49gw420y' /* Iraq */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jdytl4hw' /* Ireland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n7fton4i' /* Israel */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vnynii60' /* Italy */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dsx6eg04' /* Ivory Coast */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8n0aask9' /* Jamaica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'agh4qmjg' /* Japan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'slxuxy43' /* Jordan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '69mzfenq' /* Kazakhstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vpntu6er' /* Kenya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ix5mrulr' /* Kiribati */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'py424kvg' /* Korea, North */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ol7vpv7j' /* Korea, South */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ibs16sm8' /* Kosovo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uimx74kx' /* Kuwait */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rvw11zm2' /* Kyrgyzstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1lveq67l' /* Laos */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o53czmou' /* Latvia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'upggkl9n' /* Lebanon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'aulk16l3' /* Lesotho */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lcfs1l49' /* Liberia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g9dru2v6' /* Libya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vx493nco' /* Liechtenstein */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1bz9lcsi' /* Lithuania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'srz5rfer' /* Luxembourg */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ar8h5q6u' /* Madagascar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jyg9zy03' /* Malawi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xgxd1d8y' /* Malaysia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fczwmccz' /* Maldives */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'afsr3dc5' /* Mali */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kjfxqkti' /* Malta */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8ovrsmcp' /* Marshall Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'obsrri7k' /* Mauritania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '49dhm1x1' /* Mauritius */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kkm2bshf' /* Mexico */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tq6wgbqi' /* Micronesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '476ah2ez' /* Moldova */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ttcn9r22' /* Monaco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rtpjhqis' /* Mongolia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g7nzsq46' /* Montenegro */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fdxpkf4i' /* Morocco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9v5whijb' /* Mozambique */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qsbb0pfr' /* Myanmar (Burma) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pu8exwq1' /* Namibia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mfojvs1q' /* Nauru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xabzkvgh' /* Nepal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xwsbo503' /* Netherlands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2798w2qy' /* New Zealand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9dt5sc52' /* Nicaragua */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y1q9j52b' /* Niger */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xxqrxq6i' /* Nigeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zrd9v2ti' /* North Macedonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fa168ne5' /* Norway */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nbsajeb7' /* Oman */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'egjyiisr' /* Pakistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '69ht3m46' /* Palau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lwsc45vn' /* Panama */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '97gviwr3' /* Papua New Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zcw1jkpq' /* Paraguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'udlu8frb' /* Peru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nw1d74h4' /* Philippines */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kb7zaxa4' /* Poland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't8mvqey3' /* Portugal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iyryich0' /* Qatar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vu38w5f0' /* Romania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ct525kut' /* Russia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '458zvvek' /* Rwanda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5lg47462' /* Saint Kitts and Nevis */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w042ysma' /* Saint Lucia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sdfs0h0e' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5xgsofrm' /* Samoa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vyv5gj49' /* San Marino */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1lswdnqw' /* Sao Tome and Principe */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b2dwhwb1' /* Saudi Arabia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jakmkst3' /* Senegal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rtdzty10' /* Serbia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2w4x54hk' /* Seychelles */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'af9sdndr' /* Sierra Leone */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jozh9fsz' /* Singapore */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6ck3rzp5' /* Slovakia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f39v26vr' /* Slovenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ryeksx5s' /* Solomon Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ae4gmb3n' /* Somalia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i4sb23pb' /* South Africa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jtymd2nu' /* South Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'unwqwox3' /* Spain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yn3ys3sm' /* Sri Lanka */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hbdqosv7' /* Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1xycki4y' /* Suriname */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '79zw3wy9' /* Sweden */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'if1lg6gc' /* Switzerland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sqprayj2' /* Syria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '23v9b3kh' /* Taiwan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qvh4z8an' /* Tajikistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'moeyifmr' /* Tanzania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ehkw8gbx' /* Thailand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b24ju9xh' /* Togo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5aoeyri2' /* Tonga */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vs239zkb' /* Trinidad and Tobago */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'szqyfbmk' /* Tunisia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e2wfl7kl' /* Turkey */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e0nng5h3' /* Turkmenistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hett3dkx' /* Tuvalu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4ht5iztw' /* Uganda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h4sygnf8' /* Ukraine */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'plofwq6o' /* United Arab Emirates */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x2nowhmt' /* United Kingdom */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lof8as62' /* United States */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v8ejybjy' /* Uruguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8ntf3uwo' /* Uzbekistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y4xg3m8x' /* Vanuatu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rtnu224c' /* Vatican City */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tr1t0bpu' /* Venezuela */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '67jm3d4f' /* Vietnam */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rziyuswk' /* Yemen */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't58nicko' /* Zambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0gxdqbvr' /* Zimbabwe */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.nationalityValue =
                                                                  val),
                                                      height: 70.0,
                                                      textStyle:
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        '0thfm5se' /* Nationality */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 24.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  11.0,
                                                                  16.0,
                                                                  4.0),
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation2']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passportTextController1,
                                                      focusNode: _model
                                                          .passportFocusNode1,
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
                                                          'yq7wrk8g' /* Passport */,
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
                                                          'xixsplq9' /* Your Passport */,
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
                                                          .passportTextController1Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation5']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passportExpirationDateTextController1,
                                                      focusNode: _model
                                                          .passportExpirationDateFocusNode1,
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
                                                          'wgd7pm6w' /* Passport Expiration Date */,
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
                                                          '90qlv2dj' /* Expiration Date of Your Passpo... */,
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
                                                          .passportExpirationDateTextController1Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model
                                                            .passportExpirationDateMask1
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation6']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: AuthUserStreamWidget(
                                                      builder: (context) =>
                                                          InkWell(
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
                                                            maxWidth: 5000.00,
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
                                                                _model.isDataUploading_uploadData2xg =
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
                                                              _model.isDataUploading_uploadData2xg =
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
                                                                _model.uploadedLocalFile_uploadData2xg =
                                                                    selectedUploadedFiles
                                                                        .first;
                                                                _model.uploadedFileUrl_uploadData2xg =
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
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              CachedNetworkImage(
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
                                                            height: 75.0,
                                                            fit:
                                                                BoxFit.fitWidth,
                                                          ),
                                                        ),
                                                      ).animateOnPageLoad(
                                                              animationsMap[
                                                                  'imageOnPageLoadAnimation1']!),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .addressTextController1,
                                                      focusNode: _model
                                                          .addressFocusNode1,
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
                                                          'pdjpnu02' /* Address */,
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
                                                          'hiyhajar' /* Your Adress */,
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
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
                                                          .addressTextController1Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation7']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .residencenumberTextController1,
                                                      focusNode: _model
                                                          .residencenumberFocusNode1,
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
                                                          'mrxg5ub4' /* Residence / Building / Flat / ... */,
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
                                                          'dgja907a' /* Your Residence Number */,
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
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
                                                          .residencenumberTextController1Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation8']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cityTextController1,
                                                      focusNode:
                                                          _model.cityFocusNode1,
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
                                                          'b2ii83zh' /* City */,
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
                                                          'm9k08fg1' /* Your City */,
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
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
                                                          .cityTextController1Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation9']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .countryValueController1 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z3nus0m3' /* Afghanistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r7n1v8xk' /* Albania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nq4kxp34' /* Algeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'urpbtwdw' /* Andorra */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bv3veprj' /* Angola */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2iq09u0c' /* Antigua and Barbuda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2gltlc4s' /* Argentina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bd9714u9' /* Armenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7ev2xowd' /* Australia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n8k2fzaa' /* Austria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xa8ybnti' /* Azerbaijan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yhn793sh' /* Bahamas */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'seawqyl6' /* Bahrain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0kyiws44' /* Bangladesh */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'txrynyhh' /* Barbados */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'leobpp5w' /* Belarus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fjmapezw' /* Belgium */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k4l9zfoz' /* Belize */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ljhwzw7s' /* Benin */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uq3a4hpu' /* Bhutan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k3zgl066' /* Bolivia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'beu2bg7y' /* Bosnia and Herzegovina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'elyeg2qq' /* Botswana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'waptgbsm' /* Brazil */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sf8curl3' /* Brunei */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bd76wk3c' /* Bulgaria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5rv5mpy6' /* Burkina Faso */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mhn8hq8s' /* Burundi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y8t81jl7' /* Cabo Verde */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j48wcrti' /* Cambodia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'znaa7b40' /* Cameroon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '46izo86t' /* Canada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mkx0vwrl' /* Central African Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9x0l3qua' /* Chad */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6syq730a' /* Chile */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qsdtnyhg' /* China */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'su5ledml' /* Colombia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f4tftyfn' /* Comoros */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tg1asnd1' /* Congo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '14b7a1ao' /* Costa Rica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6z7wo5tw' /* Croatia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gbhinw05' /* Cuba */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fbfypw23' /* Cyprus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '96izxbka' /* Czech Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4283qmj4' /* Denmark */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9wbvorbk' /* Djibouti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd0ujypzj' /* Dominica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cib64cjc' /* Dominican Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd9z0hava' /* East Timor (Timor-Leste) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ujgh41ce' /* Ecuador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's687tcoa' /* Egypt */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2qr0akzq' /* El Salvador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p96db29t' /* Equatorial Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ulujouw5' /* Eritrea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'obh2istb' /* Estonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4nr5ezol' /* Eswatini */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '63z4v21l' /* Ethiopia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jywk7ton' /* Fiji */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6rwl4vb9' /* Finland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yum1bap6' /* France */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '02xgqor4' /* Gabon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h7t5hnqq' /* Gambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ji1x5fit' /* Georgia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2a7wombq' /* Germany */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's8rafg4w' /* Ghana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3cdyb2vy' /* Greece */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't66st3ib' /* Grenada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eqhu9cpi' /* Guatemala */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ubb0igr5' /* Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wjs5txhk' /* Guinea-Bissau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6x3n7ebm' /* Guyana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rbsxnmvg' /* Haiti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0b25ss4a' /* Honduras */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tmgwejsp' /* Hungary */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tyjfjjn6' /* Iceland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9oh4gysk' /* India */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3nvfoy4e' /* Indonesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm8y8bby9' /* Iran */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iurkbypd' /* Iraq */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8a4lbwas' /* Ireland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8kyso8oq' /* Israel */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5r5q630z' /* Italy */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5myrr1xg' /* Ivory Coast */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rqyd330g' /* Jamaica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f33xf0o0' /* Japan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p1luf7t2' /* Jordan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd4pmibl9' /* Kazakhstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qah3cbot' /* Kenya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lxd9xb54' /* Kiribati */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6g6mqcs0' /* Korea, North */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v1rbsln7' /* Korea, South */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eil6sg62' /* Kosovo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hhj6yky2' /* Kuwait */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lywxiduh' /* Kyrgyzstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mxj8qk7u' /* Laos */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u6i3mefu' /* Latvia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '492e5wm7' /* Lebanon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lz0ny859' /* Lesotho */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4pjx0ryk' /* Liberia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h0tnci6d' /* Libya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1dwzz0ke' /* Liechtenstein */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dfelw5m4' /* Lithuania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v7nd55kt' /* Luxembourg */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'es2gm7by' /* Madagascar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iwakhrxl' /* Malawi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2wlzttub' /* Malaysia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tcr5zibk' /* Maldives */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xnzvlwxu' /* Mali */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm3qw44i8' /* Malta */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'te41cfpg' /* Marshall Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fk2yt9sp' /* Mauritania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ev01g1op' /* Mauritius */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u16ru805' /* Mexico */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'poq3c96t' /* Micronesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm1bazrn4' /* Moldova */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'l1d8ien2' /* Monaco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '399esfth' /* Mongolia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tu7ypl2e' /* Montenegro */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '30jjxthh' /* Morocco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '11xlpr1g' /* Mozambique */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cjn5j39z' /* Myanmar (Burma) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'liyb9pz9' /* Namibia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rcjsjhx3' /* Nauru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6e4581af' /* Nepal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ryea02ks' /* Netherlands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't8q450vv' /* New Zealand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '04p73yfm' /* Nicaragua */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vqgjcdzp' /* Niger */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j8n7rdbe' /* Nigeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u3a28p5x' /* North Macedonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mt35vxjd' /* Norway */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'i2n1srfj' /* Oman */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '654uxa9b' /* Pakistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4iia425q' /* Palau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'aoatw3sp' /* Panama */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '51angpcu' /* Papua New Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'swf8c4kz' /* Paraguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ni0l701f' /* Peru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vpb33uvg' /* Philippines */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xmf0p4ju' /* Poland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1l0pnokx' /* Portugal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'p3nwg18g' /* Qatar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dosarbom' /* Romania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's1dq3o8n' /* Russia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ygtz8tnk' /* Rwanda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'aj21rj33' /* Saint Kitts and Nevis */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1basmos3' /* Saint Lucia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r0kywi18' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'inmnoyy7' /* Samoa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '39c371tc' /* San Marino */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'giy8zndi' /* Sao Tome and Principe */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eiuyjxeq' /* Saudi Arabia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qxx2qp21' /* Senegal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0tajul1g' /* Serbia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zu21mgf0' /* Seychelles */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'owa7nfsu' /* Sierra Leone */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '11w7m9f5' /* Singapore */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6xmgo365' /* Slovakia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x2zsjo40' /* Slovenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3q8pwg9r' /* Solomon Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vm0qeag2' /* Somalia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'us2fyp0o' /* South Africa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fgggptv0' /* South Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u1n8232c' /* Spain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'llqn3qqt' /* Sri Lanka */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k2411yid' /* Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '07ec7g0c' /* Suriname */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ttdxkdda' /* Sweden */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uczu96is' /* Switzerland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '334claih' /* Syria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9turqv5h' /* Taiwan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b1jlpwjo' /* Tajikistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rbjt950k' /* Tanzania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1sdiw6gx' /* Thailand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r7ojq0qj' /* Togo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j6qxsvcz' /* Tonga */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uimarx3r' /* Trinidad and Tobago */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'heftanqq' /* Tunisia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v8dfdc3m' /* Turkey */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c7idvqwm' /* Turkmenistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dskmeepk' /* Tuvalu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wlaktkkf' /* Uganda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '27ywpntq' /* Ukraine */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o53cm4o4' /* United Arab Emirates */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sx2xide9' /* United Kingdom */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hpz15fg6' /* United States */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ybf3o2k3' /* Uruguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nf2k1ug1' /* Uzbekistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e1ixkvpc' /* Vanuatu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '43d413pl' /* Vatican City */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b0notyc4' /* Venezuela */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cfcs67nn' /* Vietnam */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'axmzp3t3' /* Yemen */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vu2v4cbv' /* Zambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pltird3b' /* Zimbabwe */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.countryValue1 =
                                                                  val),
                                                      height: 70.0,
                                                      textStyle:
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
                                                                fontSize: 14.0,
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'e40a8yhs' /* Country */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 24.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  11.0,
                                                                  16.0,
                                                                  4.0),
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 12.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation3']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20.0,
                                                                20.0,
                                                                20.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .zIPCodeTextController1,
                                                      focusNode: _model
                                                          .zIPCodeFocusNode1,
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
                                                          '2fcqryyl' /* Zip Code */,
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
                                                          'fml5rj17' /* Your Zip Code */,
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
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
                                                          .zIPCodeTextController1Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation10']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: StreamBuilder<
                                                        UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              currentUserReference!),
                                                      builder:
                                                          (context, snapshot) {
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
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            if (_model
                                                                    .uploadedFileUrl_uploadData6uu
                                                                    .isEmpty) {
                                                              final selectedMedia =
                                                                  await selectMediaWithSourceBottomSheet(
                                                                context:
                                                                    context,
                                                                maxHeight:
                                                                    5000.00,
                                                                allowPhoto:
                                                                    true,
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                safeSetState(() =>
                                                                    _model.isDataUploading_uploadData6uu =
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
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                                originalFilename: m.originalFilename,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls = (await Future
                                                                          .wait(
                                                                    selectedMedia
                                                                        .map(
                                                                      (m) async => await uploadData(
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
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .hideCurrentSnackBar();
                                                                  _model.isDataUploading_uploadData6uu =
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
                                                                  safeSetState(
                                                                      () {
                                                                    _model.uploadedLocalFile_uploadData6uu =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl_uploadData6uu =
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
                                                                    .uploadedFileUrl_uploadData2xg
                                                                    .isEmpty) {
                                                              final selectedMedia =
                                                                  await selectMediaWithSourceBottomSheet(
                                                                context:
                                                                    context,
                                                                maxHeight:
                                                                    5000.00,
                                                                allowPhoto:
                                                                    true,
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                safeSetState(() =>
                                                                    _model.isDataUploading_uploadData2xg =
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
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                                originalFilename: m.originalFilename,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls = (await Future
                                                                          .wait(
                                                                    selectedMedia
                                                                        .map(
                                                                      (m) async => await uploadData(
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
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .hideCurrentSnackBar();
                                                                  _model.isDataUploading_uploadData2xg =
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
                                                                  safeSetState(
                                                                      () {
                                                                    _model.uploadedLocalFile_uploadData2xg =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl_uploadData2xg =
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
                                                                  .uploadedFileUrl_uploadData6uu,
                                                              displayName: _model
                                                                  .firstNameTextController1
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
                                                              passportexpirationdate:
                                                                  _model
                                                                      .passportExpirationDateTextController1
                                                                      .text,
                                                              copyofpassport: _model
                                                                  .uploadedFileUrl_uploadData2xg,
                                                              address: _model
                                                                  .addressTextController1
                                                                  .text,
                                                              residencenumber:
                                                                  _model
                                                                      .residencenumberTextController1
                                                                      .text,
                                                              city: _model
                                                                  .cityTextController1
                                                                  .text,
                                                              country: _model
                                                                  .countryValue1,
                                                              zipcode: _model
                                                                  .zIPCodeTextController1
                                                                  .text,
                                                              accountNumberZloty:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunction(),
                                                                '000000-1',
                                                              ),
                                                              accountNumberEuro:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunctionEuro(),
                                                                '000000-2',
                                                              ),
                                                              accountNumberDollar:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunctionDollar(),
                                                                '000000-3',
                                                              ),
                                                              areaCode: _model
                                                                  .areaCodeValue,
                                                              firstName: _model
                                                                  .firstNameTextController1
                                                                  .text,
                                                              lastName: _model
                                                                  .lastNameTextController1
                                                                  .text,
                                                            ));

                                                            context.pushNamed(
                                                                TermsandconditionsWidget
                                                                    .routeName);
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            '8716r3co' /* Complete Profile */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
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
                                                            color: Color(
                                                                0xFFA74DC9),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
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
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/qil9gkqbkt5l/WhatsApp_Image_2024-07-10_at_18.33.12.jpeg',
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                          ],
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
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 30.0,
                                                                0.0, 10.0),
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'uokmr3lf' /* Complete Profile */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineSmall
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .lexend(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                ),
                                                                color: Colors
                                                                    .white,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF262D34),
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFA74DC9),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              final selectedMedia =
                                                                  await selectMediaWithSourceBottomSheet(
                                                                context:
                                                                    context,
                                                                maxHeight:
                                                                    5000.00,
                                                                allowPhoto:
                                                                    true,
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                safeSetState(() =>
                                                                    _model.isDataUploading_uploadDataAfu =
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
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                                originalFilename: m.originalFilename,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls = (await Future
                                                                          .wait(
                                                                    selectedMedia
                                                                        .map(
                                                                      (m) async => await uploadData(
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
                                                                  _model.isDataUploading_uploadDataAfu =
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
                                                                  safeSetState(
                                                                      () {
                                                                    _model.uploadedLocalFile_uploadDataAfu =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl_uploadDataAfu =
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
                                                              width: 120.0,
                                                              height: 120.0,
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              decoration:
                                                                  BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                              child:
                                                                  Image.network(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model
                                                                      .uploadedFileUrl_uploadDataAfu,
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
                                                      'p4hc62rv' /* Upload a photo for us to easil... */,
                                                    ),
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20.0,
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation2']!),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .firstNameTextController2,
                                                      focusNode: _model
                                                          .firstNameFocusNode2,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'inbpc2ef' /* First Name */,
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
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
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
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '3dm0n0ar' /* Your Name */,
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
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.white,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
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
                                                          .firstNameTextController2Validator
                                                          .asValidator(context),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation11']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .lastNameTextController2,
                                                      focusNode: _model
                                                          .lastNameFocusNode2,
                                                      obscureText: false,
                                                      decoration:
                                                          InputDecoration(
                                                        labelText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'idtwndf8' /* Last Name */,
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
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
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
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                        alignLabelWithHint:
                                                            false,
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          '109q9rkm' /* Your Last Name */,
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
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Colors.white,
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
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
                                                          .lastNameTextController2Validator
                                                          .asValidator(context),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation12']!),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  420.0,
                                                                  20.0,
                                                                  420.0,
                                                                  0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
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
                                                              'i92ktkgd' /* Date of Birth */,
                                                            ),
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodySmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                              'w10hy3fq' /* Date of Your Birth */,
                                                            ),
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
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
                                                            fillColor:
                                                                Colors.white,
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        24.0,
                                                                        20.0,
                                                                        24.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
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
                                                              TextInputType
                                                                  .number,
                                                          validator: _model
                                                              .dateofbirthTextController2Validator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            _model
                                                                .dateofbirthMask2
                                                          ],
                                                        ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'textFieldOnPageLoadAnimation13']!),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .nationalitValueController1 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1f8weqfp' /* Afghanistan (+93) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ezi6spfs' /* Albania (+355) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'plwr9z19' /* Algeria (+213) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9xabdvch' /* Andorra (+376) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '047812bg' /* Angola (+244) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hebf2prl' /* Antigua and Barbuda (+1 264) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2mozsyc5' /* Argentina (+54) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dueps2nq' /* Armenia (+374) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r08ojk3c' /* Australia (+61) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1vt6sj0c' /* Austria (+43) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u8m5zbyl' /* Azerbaijan (+994) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rzqe0mnn' /* Bahamas (+1 242) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'toaaxlai' /* Bahrain (+973) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tyt8gtnc' /* Bangladesh (+880) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f8ord98o' /* Barbados (+1246) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w6wlour7' /* Belarus (+375) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ku6e85tz' /* Belgium (+32) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '97o3nv7q' /* Belize (+501) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'eazthjqx' /* Benin (+229) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xg3im43e' /* Bhutan (+975) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '053gl8yb' /* Bolivia (+591) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4g518o65' /* Bosnia and Herzegovina (+387) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5s7r8lcj' /* Botswana (+267) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5retv5xi' /* Brazil (+55) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5jgud8qp' /* Brunei Darussalam (+673) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3kn0cnw7' /* Bulgaria (+359) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r9t1glt8' /* Burkina Faso (+226) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '27ogzmlz' /* Burundi (+257) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y67rx81u' /* Cape Verde (+238) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'exj35brs' /* Cambodia (+855) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bbqid1kx' /* Cameroon (+237) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b60fea93' /* Canada (+1) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j12trqzd' /* Central African Republic (+236... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hykx8yfp' /* Chad (+235) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c9pti7tb' /* Chile (+56) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5rfuygin' /* China (+86) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y1hhpj0t' /* Colombia (+57) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3vcxz706' /* Comoros (+269) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bbezu81u' /* Congo (+242) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q493hs3n' /* Costa Rica (+506) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'azdtnza7' /* Croatia (+385) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'amkq620j' /* Cuba (+53) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'c7f0w9pd' /* Cyprus (+357) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6896y6vd' /* Czech Republic (+420) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '620hy9w0' /* Denmark (+45) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'aob6vhzs' /* Djibouti (+253) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0hjm71zw' /* Dominica (+1 767) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '64k7eol5' /* Dominican Republic (+1 809) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jzr7d3t2' /* Ecuador (+593) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tr86kzpw' /* Egypt (+20) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5xpyrvde' /* El Salvador (+503) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vegmdkdg' /* Equatorial Guinea (+240) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4rfpkt1s' /* Eritrea (+291) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dhz0sekt' /* Estonia (+372) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bb5wa89s' /* Estonia (+372) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '11xhcglv' /* Ethiopia (+251) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u25m8wmb' /* Fiji (+679) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ecistakt' /* Finland (+358) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dhf4sckb' /* France (+33) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rjhpeqwy' /* Gabon (+241) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gao9kcx0' /* Gambia (+220) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x1em18it' /* Georgia (+995) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '87xlidmp' /* Germany (+49) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '45jgql6s' /* Ghana (+233) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9425fuou' /* Greece (+30) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'niw81puz' /* Grenada (+1 473) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fnw1hgzd' /* Guatemala (+502) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jptnztyz' /* Guinea (+224) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '62kqidpg' /* Guinea-Bissau (+245) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ctrvn7wy' /* Guyana (+592) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bq7en3a2' /* Haiti (+509) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0b6trewa' /* Honduras (+504) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '124vgers' /* Hungary (+36) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2409yguz' /* Iceland (+354) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '999yxupf' /* India (+91) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8qmit8f3' /* Indonesia (+62) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '78rc7zky' /* Iran (+98) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ri9nnt9u' /* Iraq (+964) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'voh90l7a' /* Ireland (+353) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '66xl4lsk' /* Israel (+972) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5jia55ut' /* Italy (+39) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lq9zoo91' /* Jamaica (+1 876) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'oljm3zmo' /* Japan (+81) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hbcvi0ym' /* Jordan (+962) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n3zcjayd' /* Kazakhstan (+7) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iaazx39g' /* Kenya (+254) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0jw46be4' /* Kiribati (+686) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lwsvh264' /* Korea, North (+850) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wympnnof' /* Korea, South (+82) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5g3eelz6' /* Kuwait (+965) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r8ce29wq' /* Kyrgyzstan (+996) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n7x0d1vm' /* Laos (+856) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h6wfxck5' /* Latvia (+371) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ni0jmxtd' /* Lebanon (+961) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gnim0g7i' /* Lesotho (+266) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xavdapkv' /* Liberia (+231) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '73mdr2pq' /* Libya (+218) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u09bol6c' /* Liechtenstein (+423) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7qff0bmf' /* Lithuania (+370) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'r0wnp25p' /* Luxembourg (+352) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zf3hetz7' /* Madagascar (+261) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8z4trrag' /* Malawi (+265) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'd8mblorc' /* Malaysia (+60) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dcjiy0mf' /* Maldives (+960) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '15alxzlz' /* Mali (+223) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wpap5thk' /* Malta (+356) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'arlyz34v' /* Marshall Islands (+692) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zk1eskin' /* Mauritania (+222) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '08ditqzv' /* Mauritius (+230) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1skb3llm' /* Mexico (+52) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6xmz884i' /* Micronesia (+691) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fa6uqpld' /* Moldova (+373) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q91y72ap' /* Monaco (+377) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kvnqhost' /* Mongolia (+976) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o4uxgwsg' /* Montenegro (+382) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w69v3jra' /* Morocco (+212) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bq0unz50' /* Mozambique (+258) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kedovqx6' /* Myanmar (+95) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '73xkp59o' /* Namibia (+264) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'udfvhtgn' /* Nauru (+674) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nnqb1bgh' /* Nepal (+977) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm5zryfq4' /* Netherlands (+31) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mzjmjsv9' /* New Zealand (+64) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1osvp9ii' /* Nicaragua (+505) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zrd8ysni' /* Niger (+227) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kp55q14c' /* Nigeria (+234) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'slh3wyqd' /* North Macedonia (+389) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '99kl50gp' /* Norway (+47) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1gpwkzvk' /* Oman (+968) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2ouysud0' /* Pakistan (+92) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jzy8x6yi' /* Palau (+680) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'umi3de49' /* Panama (+507) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'me80gmap' /* Papua New Guinea (+675) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gkbb7x5k' /* Paraguay (+595) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'had3xah8' /* Peru (+51) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '46yh2j1z' /* Philippines (+63) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ixdynff9' /* Poland (+48) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'inxgwrsz' /* Portugal (+351) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w5w3csu1' /* Qatar (+974) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dhgiomse' /* Romania (+40) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'csaie5bn' /* Russia (+7) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hmzlx7z4' /* Rwanda (+250) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j69a0e7d' /* Saint Kitts and Nevis (+1 869) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a7cmtr9b' /* Saint Lucia (+1 758) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mq0d60g5' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qwvjpfwl' /* Samoa (+685) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1ug3a405' /* San Marino (+378) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jk3dlnn7' /* Sao Tome and Principe (+239) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q0pa1kid' /* Saudi Arabia (+966) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '99i6y78y' /* Senegal (+221) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wi3nxfcl' /* Serbia (+381) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '10sb3u93' /* Seychelles (+248) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8x63hptp' /* Sierra Leone (+232) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mxvmnm8d' /* Singapore (+65) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2avvgcig' /* Slovakia (+421) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rmwkp5xj' /* Slovenia (+386) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1m6zcksd' /* Solomon Islands (+677) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'm2hfuhyn' /* Somalia (+252) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vqv2bqwq' /* South Africa (+27) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8cywtuni' /* South Sudan (+211) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hd8kp6qc' /* Spain (+34) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ggigssy3' /* Sri Lanka (+94) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pcqlo1a4' /* Sudan (+249) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xx3tminx' /* Suriname (+597) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '35ziaggd' /* Sweden (+46) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0or0ggzv' /* Switzerland (+41) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n2diewo8' /* Syria (+963) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zkzmtkta' /* Taiwan (+886) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7vf5wp3h' /* Tajikistan (+992) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'go9imysf' /* Tanzania (+255) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'slbhcbel' /* Thailand (+66) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x1jlcjm2' /* Togo (+228) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qdew7r44' /* Tonga (+676) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5c27tuqz' /* Trinidad and Tobago (+1 868) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h1atvooz' /* Tunisia (+216) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z9zbq3p8' /* Turkey (+90) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vakfx4dc' /* Turkmenistan (+993) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v8cw5hch' /* Tuvalu (+688) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3xjxfwxb' /* Uganda (+256) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uhye1l6v' /* Ukraine (+380) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xbccii05' /* United Arab Emirates (+971) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vrmeulhi' /* United Kingdom (+44) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iev9s3kv' /* United States of America (+1) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qscb3axa' /* Uruguay (+598) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't5fm0pn1' /* Uzbekistan (+998) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qojf2hb4' /* Vanuatu (+678) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uekuk732' /* Venezuela (+58) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mo10p4hn' /* Vietnam (+84) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x43scw0a' /* Yemen (+967) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '22glwjau' /* Zambia (+260) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't5zsvc7j' /* Zimbabwe (+263) */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.nationalitValue1 =
                                                                  val),
                                                      height: 70.0,
                                                      textStyle:
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'lragdvv5' /* Area Code */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 24.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  11.0,
                                                                  16.0,
                                                                  4.0),
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation4']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cellphoneTextController2,
                                                      focusNode: _model
                                                          .cellphoneFocusNode2,
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
                                                          'yxautr9e' /* Cell Phone */,
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
                                                          'h3ovskkm' /* Your Cell Phone */,
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
                                                          .cellphoneTextController2Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation14']!),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  420.0,
                                                                  20.0,
                                                                  420.0,
                                                                  0.0),
                                                      child: FlutterFlowDropDown<
                                                          String>(
                                                        controller: _model
                                                                .nationalitValueController2 ??=
                                                            FormFieldController<
                                                                String>(null),
                                                        options: [
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8h4639no' /* Afghanistan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'lhamrhuk' /* Albania */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'e19bd95v' /* Algeria */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ao41gvlf' /* Andorra */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '9id9175v' /* Angola */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wr1hula9' /* Antigua and Barbuda */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'usg1xsg0' /* Argentina */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'e9vqub6i' /* Armenia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'le6v4b4u' /* Australia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'eemd8blj' /* Austria */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'v77q2jfr' /* Azerbaijan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'oaabszn8' /* Bahamas */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'g56o5wdx' /* Bahrain */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'lfuvx6rz' /* Bangladesh */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gmqdkdv0' /* Barbados */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'a6cz1vov' /* Belarus */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'aczgui15' /* Belgium */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8o7x6vd2' /* Belize */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '222x56pj' /* Benin */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'erqjeki6' /* Bhutan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wkvkkokn' /* Bolivia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '1xrt2864' /* Bosnia and Herzegovina */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wwby1ggw' /* Botswana */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'q0ubcbwr' /* Brazil */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7skxmucz' /* Brunei */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0wsnwvb1' /* Bulgaria */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '5nnai5bt' /* Burkina Faso */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'y1xtjmds' /* Burundi */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8krl19co' /* Cabo Verde */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3xcuze4u' /* Cambodia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jkuhqvps' /* Cameroon */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'cn49lo6f' /* Canada */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'y5mol5jp' /* Central African Republic */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'noj8wdv1' /* Chad */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'l8mplshm' /* Chile */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'b35b6cfg' /* China */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'unxitckr' /* Colombia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jqh3l66a' /* Comoros */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xgb09jvt' /* Congo */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'duxkknnn' /* Costa Rica */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '57gpohw4' /* Croatia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'dk2ku68x' /* Cuba */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ib985rk5' /* Cyprus */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'cqhykdvf' /* Czech Republic */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'm0c4vbku' /* Denmark */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'me6hezrt' /* Djibouti */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3hxsl2q6' /* Dominica */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'f4qu2sbr' /* Dominican Republic */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'uudylsi6' /* East Timor (Timor-Leste) */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xqqxwyaw' /* Ecuador */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'n5c8dkn0' /* Egypt */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gsuer7sl' /* El Salvador */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'hozqr386' /* Equatorial Guinea */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jd3rb9yg' /* Eritrea */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '35i8nvmt' /* Estonia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wvmnywv0' /* Eswatini */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ffrdb5ec' /* Ethiopia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '05estqkd' /* Fiji */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6u337xcu' /* Finland */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ldk3rdja' /* France */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'im6h2vye' /* Gabon */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '81th5y7k' /* Gambia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'y3rnjfu3' /* Georgia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ku69m9mm' /* Germany */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kqaubsm5' /* Ghana */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wk6qq647' /* Greece */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0scwz68n' /* Grenada */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kudlboep' /* Guatemala */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xb2r8fla' /* Guinea */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'iyn5tw7t' /* Guinea-Bissau */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'qi4aegoc' /* Guyana */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '578v9oin' /* Haiti */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'zpqzcrkd' /* Honduras */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8edxmjp1' /* Hungary */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'dscnqgj7' /* Iceland */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rnkjk08b' /* India */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'wwwmwdje' /* Indonesia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '58ddr7yp' /* Iran */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8m11tjo2' /* Iraq */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            's3wyhk6y' /* Ireland */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '2bj6e30n' /* Israel */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'qppvv4t6' /* Italy */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'zkn7tz6j' /* Ivory Coast */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '64leqqdv' /* Jamaica */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '9zb5dbc2' /* Japan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'a9dqoh3b' /* Jordan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'of600dkp' /* Kazakhstan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mmxdvvy1' /* Kenya */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mv3b732z' /* Kiribati */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ja92mvns' /* Korea, North */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'q93ldg1q' /* Korea, South */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'henliewo' /* Kosovo */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '02xgcns6' /* Kuwait */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '15r593wu' /* Kyrgyzstan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'uymwjbfx' /* Laos */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'izbccy0k' /* Latvia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '25zo932a' /* Lebanon */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '2g7e48zr' /* Lesotho */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'xlez0klv' /* Liberia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'vxdp5f60' /* Libya */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ntnpopwt' /* Liechtenstein */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3q50h3ny' /* Lithuania */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'bhoiuc57' /* Luxembourg */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'emy9hlos' /* Madagascar */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kl0s0y8j' /* Malawi */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '70z45umc' /* Malaysia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'baje9o9m' /* Maldives */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3xpqkwyu' /* Mali */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '1aaplwuu' /* Malta */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '3pbpcc4b' /* Marshall Islands */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7xvve192' /* Mauritania */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'w8xtvv70' /* Mauritius */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rgdlx95a' /* Mexico */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'cvo3taiy' /* Micronesia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mid4f9sa' /* Moldova */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4fvlgyjt' /* Monaco */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'py9qqtst' /* Mongolia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kslf0b32' /* Montenegro */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'quutazh3' /* Morocco */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'k9jn7qle' /* Mozambique */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kbpyfj3r' /* Myanmar (Burma) */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'b2tszehg' /* Namibia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'v44ufbbg' /* Nauru */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'tk1f3udx' /* Nepal */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'vwvh2q1a' /* Netherlands */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'r7yps5yq' /* New Zealand */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '5ioqqt04' /* Nicaragua */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'sfvpm0if' /* Niger */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'lh8y4m33' /* Nigeria */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'zjgextov' /* North Macedonia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '067pcc6z' /* Norway */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'o0bhlf49' /* Oman */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '2q9w166j' /* Pakistan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'vssvuv40' /* Palau */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rx7wz6iu' /* Panama */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'od8knz2n' /* Papua New Guinea */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mto2a4rj' /* Paraguay */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '7h196mgz' /* Peru */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'lbxqz59o' /* Philippines */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '5ywpb85f' /* Poland */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4qgl8ftr' /* Portugal */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rye1dffb' /* Qatar */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'grzc571j' /* Romania */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'lomdqp2d' /* Russia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'sa8coi3k' /* Rwanda */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0tuiczo8' /* Saint Kitts and Nevis */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '903k9y6d' /* Saint Lucia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6cvxct20' /* Saint Vincent and the Grenadin... */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0bjtw1ob' /* Samoa */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'lgjvj4sg' /* San Marino */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rc2bhodw' /* Sao Tome and Principe */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'hkv8cclp' /* Saudi Arabia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'qagy7q1b' /* Senegal */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '095u82q7' /* Serbia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'udyomo5i' /* Seychelles */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6wcgomm2' /* Sierra Leone */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '0nzprf5j' /* Singapore */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'y8vzxoa4' /* Slovakia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'pgteeeqt' /* Slovenia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4xn77mi8' /* Solomon Islands */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'fs7n7yus' /* Somalia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'x284sz4k' /* South Africa */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'mrn1r1qg' /* South Sudan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'du0oq8ma' /* Spain */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'izkf2zui' /* Sri Lanka */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'o7b88orc' /* Sudan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '58odr0lw' /* Suriname */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'fu95qy0z' /* Sweden */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'dhp0fdqh' /* Switzerland */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'hb7u1uva' /* Syria */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'gh3wfkjd' /* Taiwan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'ebcdc9yr' /* Tajikistan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'tz8pes0d' /* Tanzania */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'l0xgmfy3' /* Thailand */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'rr5tb6mr' /* Togo */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jrw7ciqv' /* Tonga */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'n4wcj5n6' /* Trinidad and Tobago */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '8tky8vq2' /* Tunisia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '6vro6ayd' /* Turkey */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4r1yg1u4' /* Turkmenistan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'h0y7c817' /* Tuvalu */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'az6dfzu0' /* Uganda */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'y46fkzoa' /* Ukraine */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'h000pf7n' /* United Arab Emirates */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'u6p5pqna' /* United Kingdom */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'jfgt6fw6' /* United States */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'fic87scm' /* Uruguay */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '71qkmot8' /* Uzbekistan */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '81l2hki0' /* Vanuatu */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'u1e7jh3l' /* Vatican City */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'cga4tvkh' /* Venezuela */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '4tb5mpzc' /* Vietnam */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'kgxruyv9' /* Yemen */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            '9xqtogku' /* Zambia */,
                                                          ),
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                            'u08gtcgr' /* Zimbabwe */,
                                                          )
                                                        ],
                                                        onChanged: (val) =>
                                                            safeSetState(() =>
                                                                _model.nationalitValue2 =
                                                                    val),
                                                        height: 80.0,
                                                        textStyle:
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
                                                        hintText:
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                          'i2h69r33' /* Nationality */,
                                                        ),
                                                        icon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_rounded,
                                                          color:
                                                              Color(0xFF8B97A2),
                                                          size: 20.0,
                                                        ),
                                                        fillColor: Colors.white,
                                                        elevation: 2.0,
                                                        borderColor:
                                                            Colors.white,
                                                        borderWidth: 2.0,
                                                        borderRadius: 8.0,
                                                        margin:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    16.0,
                                                                    16.0,
                                                                    4.0),
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
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  fontSize:
                                                                      15.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                      ).animateOnPageLoad(
                                                          animationsMap[
                                                              'dropDownOnPageLoadAnimation5']!),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passportTextController2,
                                                      focusNode: _model
                                                          .passportFocusNode2,
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
                                                          'evoeehb3' /* Passport */,
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
                                                          'vpj3t9tc' /* Your Passport */,
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
                                                          .passportTextController2Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation15']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .passportExpirationDateTextController2,
                                                      focusNode: _model
                                                          .passportExpirationDateFocusNode2,
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
                                                          'r73zfy0g' /* Passport Expiration Date */,
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
                                                          '40ko8yxn' /* Expiration Date of Your Passpo... */,
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
                                                          .passportExpirationDateTextController2Validator
                                                          .asValidator(context),
                                                      inputFormatters: [
                                                        _model
                                                            .passportExpirationDateMask2
                                                      ],
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation16']!),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  200.0,
                                                                  20.0,
                                                                  200.0,
                                                                  0.0),
                                                      child:
                                                          AuthUserStreamWidget(
                                                        builder: (context) =>
                                                            InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            final selectedMedia =
                                                                await selectMediaWithSourceBottomSheet(
                                                              context: context,
                                                              maxHeight:
                                                                  5000.00,
                                                              allowPhoto: true,
                                                            );
                                                            if (selectedMedia !=
                                                                    null &&
                                                                selectedMedia.every((m) =>
                                                                    validateFileFormat(
                                                                        m.storagePath,
                                                                        context))) {
                                                              safeSetState(() =>
                                                                  _model.isDataUploading_uploadDataPvb =
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
                                                                              name: m.storagePath.split('/').last,
                                                                              bytes: m.bytes,
                                                                              height: m.dimensions?.height,
                                                                              width: m.dimensions?.width,
                                                                              blurHash: m.blurHash,
                                                                              originalFilename: m.originalFilename,
                                                                            ))
                                                                        .toList();

                                                                downloadUrls = (await Future
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
                                                                _model.isDataUploading_uploadDataPvb =
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
                                                                safeSetState(
                                                                    () {
                                                                  _model.uploadedLocalFile_uploadDataPvb =
                                                                      selectedUploadedFiles
                                                                          .first;
                                                                  _model.uploadedFileUrl_uploadDataPvb =
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
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                CachedNetworkImage(
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
                                                              height: 75.0,
                                                              fit: BoxFit
                                                                  .fitWidth,
                                                              alignment:
                                                                  Alignment(
                                                                      0.0, 0.0),
                                                            ),
                                                          ),
                                                        ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'imageOnPageLoadAnimation2']!),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .addressTextController2,
                                                      focusNode: _model
                                                          .addressFocusNode2,
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
                                                          'tw97hcns' /* Address */,
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
                                                          'fuwc7bv4' /* Your Adress */,
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
                                                          .addressTextController2Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation17']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .residencenumberTextController2,
                                                      focusNode: _model
                                                          .residencenumberFocusNode2,
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
                                                          'u0hdk25f' /* Residence Number */,
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
                                                          'zjsocx9x' /* Your Residence Number */,
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
                                                          .residencenumberTextController2Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation18']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .cityTextController2,
                                                      focusNode:
                                                          _model.cityFocusNode2,
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
                                                          '5ifxv1vb' /* City */,
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
                                                          'vut3mn7n' /* Your City */,
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
                                                          .cityTextController2Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation19']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: FlutterFlowDropDown<
                                                        String>(
                                                      controller: _model
                                                              .countryValueController2 ??=
                                                          FormFieldController<
                                                              String>(null),
                                                      options: [
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1k1qizi9' /* Afghanistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bye9qsfl' /* Albania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fb3jbbxp' /* Algeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uutqv2y3' /* Andorra */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cmemq59k' /* Angola */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hu4uz48n' /* Antigua and Barbuda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cwglzx5h' /* Argentina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1v9wni00' /* Armenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f8xgyhy2' /* Australia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'a3qb82cr' /* Austria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iu8cq3hm' /* Azerbaijan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ct6bq188' /* Bahamas */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mkywohcr' /* Bahrain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9189me3j' /* Bangladesh */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8sa7aum5' /* Barbados */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lcgnag1x' /* Belarus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0y3blu2x' /* Belgium */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5ofiwpy0' /* Belize */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ex9a6jz2' /* Benin */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'mw3eip33' /* Bhutan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '102rnoou' /* Bolivia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nmej3cgg' /* Bosnia and Herzegovina */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ufflf6kd' /* Botswana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'so2ulsw3' /* Brazil */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bmg71ra5' /* Brunei */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'slz2kq86' /* Bulgaria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k4qe2ncw' /* Burkina Faso */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xrz1kbdf' /* Burundi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yxry8v4b' /* Cabo Verde */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vjdbgom4' /* Cambodia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g20642hc' /* Cameroon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ce20undf' /* Canada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'q0ds7xbp' /* Central African Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3ctk467f' /* Chad */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lmmpd2r4' /* Chile */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4onhby13' /* China */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j9qpawdb' /* Colombia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dnmreeoa' /* Comoros */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vvblqp09' /* Congo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uq3lso7m' /* Costa Rica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '577ubqdz' /* Croatia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7tra3t5o' /* Cuba */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z2zjumt2' /* Cyprus */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v16hrj44' /* Czech Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3dqqbhgf' /* Denmark */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fhjugnp0' /* Djibouti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wykgxnyp' /* Dominica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k7p2jry0' /* Dominican Republic */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nhswqecv' /* East Timor (Timor-Leste) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ehttk3kj' /* Ecuador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'owic2luj' /* Egypt */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'unsvxnfd' /* El Salvador */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0guogt5l' /* Equatorial Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0slhapyi' /* Eritrea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zuiz3ad1' /* Estonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jlia87ki' /* Eswatini */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'llzn1ins' /* Ethiopia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'z0ez45oc' /* Fiji */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3u5lpjyy' /* Finland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qa4uver8' /* France */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qjmfwh50' /* Gabon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'v50elhub' /* Gambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ml0ontdi' /* Georgia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'obce84wb' /* Germany */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xlnsj3hb' /* Ghana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ry91i8dm' /* Greece */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zrhbclys' /* Grenada */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nesxpmiu' /* Guatemala */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0138036l' /* Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ioom85by' /* Guinea-Bissau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'km6hm2z3' /* Guyana */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vhtqlc5h' /* Haiti */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k78qj0fv' /* Honduras */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uzqpiy00' /* Hungary */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'qcewx85k' /* Iceland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2kl8gguc' /* India */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rb3zt54h' /* Indonesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iou4kbna' /* Iran */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '67jf1jew' /* Iraq */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'kp5wn1ba' /* Ireland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8qu1jeux' /* Israel */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jmegmqqn' /* Italy */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'glsbj5ib' /* Ivory Coast */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9ul161qn' /* Jamaica */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1lryehje' /* Japan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '7u6ahgws' /* Jordan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'votovqyi' /* Kazakhstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '465e3bvt' /* Kenya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f1a4s9zy' /* Kiribati */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '02yb0me1' /* Korea, North */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u5cpan3n' /* Korea, South */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sw7bfjoo' /* Kosovo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8kexe4sd' /* Kuwait */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hzkrel4w' /* Kyrgyzstan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nzhq6e46' /* Laos */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5kfymosk' /* Latvia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'w42pak15' /* Lebanon */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2knx5pz0' /* Lesotho */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'niq09ule' /* Liberia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lfy2vwd1' /* Libya */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fbh2p3mu' /* Liechtenstein */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          's266qrmb' /* Lithuania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vp3j3sdn' /* Luxembourg */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wdwl6kph' /* Madagascar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uiwvjq1g' /* Malawi */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0shnjtr8' /* Malaysia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'adzfrwf3' /* Maldives */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lo60l5w6' /* Mali */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fcq5u728' /* Malta */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pqhwfdl3' /* Marshall Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'diy0w3bx' /* Mauritania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tehul0f1' /* Mauritius */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sltnui2o' /* Mexico */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2f43rj5e' /* Micronesia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3zfrnupk' /* Moldova */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'x2kx7h7p' /* Monaco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '5mxe9b9b' /* Mongolia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n8azhye5' /* Montenegro */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'tmrxwkpf' /* Morocco */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jzrp5ucj' /* Mozambique */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1yckafjq' /* Myanmar (Burma) */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dkv7n8m0' /* Namibia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rmwr2896' /* Nauru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vn2d6w3e' /* Nepal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'nkivonin' /* Netherlands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xyzjk1nd' /* New Zealand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'cdp8w7xm' /* Nicaragua */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '6s7mpppo' /* Niger */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wxp69ara' /* Nigeria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'pva4piza' /* North Macedonia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e66w99ye' /* Norway */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3tveh81o' /* Oman */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'y7vzzuzc' /* Pakistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '2rvvk29o' /* Palau */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'uyk4yjvf' /* Panama */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'k2bfnnim' /* Papua New Guinea */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'oxjud477' /* Paraguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zltjvn5h' /* Peru */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rs4iha6r' /* Philippines */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4ug4a77p' /* Poland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ypgltfz6' /* Portugal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'xife0bde' /* Qatar */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h27042yb' /* Romania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jppvsfj4' /* Russia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lmec9lxh' /* Rwanda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'j1xzqc20' /* Saint Kitts and Nevis */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '208bdmwq' /* Saint Lucia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'sz3n10zm' /* Saint Vincent and the Grenadin... */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '15y8gbkc' /* Samoa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h8gqhwxi' /* San Marino */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'jjc5qy2v' /* Sao Tome and Principe */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ncycfju8' /* Saudi Arabia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'zd1sdh0x' /* Senegal */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'b7p7nt49' /* Serbia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'g71eyqje' /* Seychelles */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'rf4ob1fh' /* Sierra Leone */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'blf2ckum' /* Singapore */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hzp0l06x' /* Slovakia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n54zdizs' /* Slovenia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '8oalba6v' /* Solomon Islands */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wbqjyupe' /* Somalia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'feu5mvtc' /* South Africa */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0mbd647j' /* South Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'yae3alqn' /* Spain */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'iq4feh7m' /* Sri Lanka */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vjorqazl' /* Sudan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '0fxtqbh3' /* Suriname */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'wxr2w6x8' /* Sweden */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vi477emq' /* Switzerland */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'gold9k4e' /* Syria */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'hgnlt6yl' /* Taiwan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '20omllwf' /* Tajikistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '4xtsx786' /* Tanzania */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'lae2f9hr' /* Thailand */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vbjzfmfi' /* Togo */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          't14l42od' /* Tonga */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'dh290pqz' /* Trinidad and Tobago */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'agk2vzl6' /* Tunisia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'o8e59vbf' /* Turkey */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ezbf1ftj' /* Turkmenistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bpny3uel' /* Tuvalu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '1yogzm64' /* Uganda */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ma4rb25y' /* Ukraine */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3fp2mhey' /* United Arab Emirates */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '9zio2k1t' /* United Kingdom */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '25u7potw' /* United States */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'fbq37mpc' /* Uruguay */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'vquc5uw7' /* Uzbekistan */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'u88eq3jg' /* Vanuatu */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'h8sm706l' /* Vatican City */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'f56xzynb' /* Venezuela */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'e650yv7m' /* Vietnam */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '726226gp' /* Yemen */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          '3gipjrhy' /* Zambia */,
                                                        ),
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'ihxiuz0m' /* Zimbabwe */,
                                                        )
                                                      ],
                                                      onChanged: (val) =>
                                                          safeSetState(() =>
                                                              _model.countryValue2 =
                                                                  val),
                                                      height: 80.0,
                                                      textStyle:
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
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'fhao8npu' /* Country */,
                                                      ),
                                                      icon: Icon(
                                                        Icons
                                                            .keyboard_arrow_down_rounded,
                                                        color:
                                                            Color(0xFF8B97A2),
                                                        size: 15.0,
                                                      ),
                                                      fillColor: Colors.white,
                                                      elevation: 2.0,
                                                      borderColor: Colors.white,
                                                      borderWidth: 2.0,
                                                      borderRadius: 8.0,
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  16.0,
                                                                  16.0,
                                                                  4.0),
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
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                fontSize: 15.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'dropDownOnPageLoadAnimation6']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                420.0,
                                                                20.0,
                                                                420.0,
                                                                0.0),
                                                    child: TextFormField(
                                                      controller: _model
                                                          .zIPCodeTextController2,
                                                      focusNode: _model
                                                          .zIPCodeFocusNode2,
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
                                                          'l8eb0q37' /* Zip Code */,
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
                                                          'nxnpl4ol' /* Your Zip Code */,
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
                                                          .zIPCodeTextController2Validator
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
                                                    ).animateOnPageLoad(
                                                        animationsMap[
                                                            'textFieldOnPageLoadAnimation20']!),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: StreamBuilder<
                                                        UsersRecord>(
                                                      stream: UsersRecord
                                                          .getDocument(
                                                              currentUserReference!),
                                                      builder:
                                                          (context, snapshot) {
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
                                                            if (_model.formKey
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            if (_model
                                                                    .uploadedFileUrl_uploadData6uu
                                                                    .isEmpty) {
                                                              final selectedMedia =
                                                                  await selectMediaWithSourceBottomSheet(
                                                                context:
                                                                    context,
                                                                maxHeight:
                                                                    5000.00,
                                                                allowPhoto:
                                                                    true,
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                safeSetState(() =>
                                                                    _model.isDataUploading_uploadData6uu =
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
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                                originalFilename: m.originalFilename,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls = (await Future
                                                                          .wait(
                                                                    selectedMedia
                                                                        .map(
                                                                      (m) async => await uploadData(
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
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .hideCurrentSnackBar();
                                                                  _model.isDataUploading_uploadData6uu =
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
                                                                  safeSetState(
                                                                      () {
                                                                    _model.uploadedLocalFile_uploadData6uu =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl_uploadData6uu =
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
                                                                    .uploadedFileUrl_uploadData2xg
                                                                    .isEmpty) {
                                                              final selectedMedia =
                                                                  await selectMediaWithSourceBottomSheet(
                                                                context:
                                                                    context,
                                                                maxHeight:
                                                                    5000.00,
                                                                allowPhoto:
                                                                    true,
                                                              );
                                                              if (selectedMedia !=
                                                                      null &&
                                                                  selectedMedia.every((m) =>
                                                                      validateFileFormat(
                                                                          m.storagePath,
                                                                          context))) {
                                                                safeSetState(() =>
                                                                    _model.isDataUploading_uploadData2xg =
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
                                                                                name: m.storagePath.split('/').last,
                                                                                bytes: m.bytes,
                                                                                height: m.dimensions?.height,
                                                                                width: m.dimensions?.width,
                                                                                blurHash: m.blurHash,
                                                                                originalFilename: m.originalFilename,
                                                                              ))
                                                                          .toList();

                                                                  downloadUrls = (await Future
                                                                          .wait(
                                                                    selectedMedia
                                                                        .map(
                                                                      (m) async => await uploadData(
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
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .hideCurrentSnackBar();
                                                                  _model.isDataUploading_uploadData2xg =
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
                                                                  safeSetState(
                                                                      () {
                                                                    _model.uploadedLocalFile_uploadData2xg =
                                                                        selectedUploadedFiles
                                                                            .first;
                                                                    _model.uploadedFileUrl_uploadData2xg =
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
                                                                  .uploadedFileUrl_uploadDataAfu,
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
                                                              passportexpirationdate:
                                                                  _model
                                                                      .passportExpirationDateTextController2
                                                                      .text,
                                                              copyofpassport: _model
                                                                  .uploadedFileUrl_uploadDataPvb,
                                                              address: _model
                                                                  .addressTextController2
                                                                  .text,
                                                              residencenumber:
                                                                  _model
                                                                      .residencenumberTextController2
                                                                      .text,
                                                              city: _model
                                                                  .cityTextController2
                                                                  .text,
                                                              country: _model
                                                                  .countryValue2,
                                                              zipcode: _model
                                                                  .zIPCodeTextController2
                                                                  .text,
                                                              accountNumberZloty:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunction(),
                                                                '000000-1',
                                                              ),
                                                              accountNumberEuro:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunctionEuro(),
                                                                '000000-2',
                                                              ),
                                                              accountNumberDollar:
                                                                  valueOrDefault<
                                                                      String>(
                                                                functions
                                                                    .newCustomFunctionDollar(),
                                                                '000000-3',
                                                              ),
                                                              areaCode:
                                                                  buttonLoginUsersRecord
                                                                      .areaCode,
                                                            ));

                                                            context.pushNamed(
                                                                TermsandconditionsWidget
                                                                    .routeName);
                                                          },
                                                          text: FFLocalizations
                                                                  .of(context)
                                                              .getText(
                                                            'y7dir54a' /* Complete Profile */,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
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
                                                            color: Color(
                                                                0xFFA74DC9),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .lexend(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .fontStyle,
                                                                      ),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .textColor,
                                                                      fontSize:
                                                                          20.0,
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
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
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
                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/amethyst-i05act/assets/qil9gkqbkt5l/WhatsApp_Image_2024-07-10_at_18.33.12.jpeg',
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  fit: BoxFit.fitWidth,
                                ),
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
    );
  }
}
