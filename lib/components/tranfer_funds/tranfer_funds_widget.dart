import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'tranfer_funds_model.dart';
export 'tranfer_funds_model.dart';

class TranferFundsWidget extends StatefulWidget {
  const TranferFundsWidget({super.key});

  @override
  State<TranferFundsWidget> createState() => _TranferFundsWidgetState();
}

class _TranferFundsWidgetState extends State<TranferFundsWidget>
    with TickerProviderStateMixin {
  late TranferFundsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TranferFundsModel());

    _model.tranferFundsTextController ??= TextEditingController();
    _model.tranferFundsFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textFieldOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 170.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 170.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 170.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 0.0),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
      child: TextFormField(
        controller: _model.tranferFundsTextController,
        focusNode: _model.tranferFundsFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.tranferFundsTextController',
          Duration(milliseconds: 0),
          () async {
            safeSetState(() {
              _model.tranferFundsTextController?.text =
                  functions.convertCurrency(
                      _model.tranferFundsTextController.text, true)!;
              _model.tranferFundsFocusNode?.requestFocus();
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _model.tranferFundsTextController?.selection =
                    TextSelection.collapsed(
                  offset: _model.tranferFundsTextController!.text.length,
                );
              });
            });
          },
        ),
        obscureText: false,
        decoration: InputDecoration(
          labelText: FFLocalizations.of(context).getText(
            'iwof3mhi' /* Amount */,
          ),
          labelStyle: FlutterFlowTheme.of(context).displaySmall.override(
                font: GoogleFonts.lexend(
                  fontWeight: FontWeight.normal,
                  fontStyle:
                      FlutterFlowTheme.of(context).displaySmall.fontStyle,
                ),
                color: Color(0xFF8B97A2),
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
              ),
          hintStyle: FlutterFlowTheme.of(context).displaySmall.override(
                font: GoogleFonts.lexend(
                  fontWeight:
                      FlutterFlowTheme.of(context).displaySmall.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).displaySmall.fontStyle,
                ),
                color: Color(0xFF8B97A2),
                fontSize: 14.0,
                letterSpacing: 0.0,
                fontWeight:
                    FlutterFlowTheme.of(context).displaySmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
              ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 24.0, 24.0),
        ),
        style: FlutterFlowTheme.of(context).displaySmall.override(
              font: GoogleFonts.lexend(
                fontWeight: FontWeight.normal,
                fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
              ),
              color: Color(0xFF8B97A2),
              fontSize: 14.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.normal,
              fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
            ),
        maxLines: null,
        keyboardType: TextInputType.number,
        validator:
            _model.tranferFundsTextControllerValidator.asValidator(context),
      ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation']!),
    );
  }
}
