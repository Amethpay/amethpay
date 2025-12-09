import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'input_tranfer_funds_business_model.dart';
export 'input_tranfer_funds_business_model.dart';

class InputTranferFundsBusinessWidget extends StatefulWidget {
  const InputTranferFundsBusinessWidget({super.key});

  @override
  State<InputTranferFundsBusinessWidget> createState() =>
      _InputTranferFundsBusinessWidgetState();
}

class _InputTranferFundsBusinessWidgetState
    extends State<InputTranferFundsBusinessWidget>
    with TickerProviderStateMixin {
  late InputTranferFundsBusinessModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InputTranferFundsBusinessModel());

    _model.inputTranferFundsBusinessTextController ??= TextEditingController();
    _model.inputTranferFundsBusinessFocusNode ??= FocusNode();

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
        controller: _model.inputTranferFundsBusinessTextController,
        focusNode: _model.inputTranferFundsBusinessFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.inputTranferFundsBusinessTextController',
          Duration(milliseconds: 0),
          () async {
            safeSetState(() {
              _model.inputTranferFundsBusinessTextController?.text =
                  functions.convertCurrency(
                      _model.inputTranferFundsBusinessTextController.text,
                      true)!;
              _model.inputTranferFundsBusinessFocusNode?.requestFocus();
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _model.inputTranferFundsBusinessTextController?.selection =
                    TextSelection.collapsed(
                  offset: _model
                      .inputTranferFundsBusinessTextController!.text.length,
                );
              });
            });
          },
        ),
        obscureText: false,
        decoration: InputDecoration(
          labelText: FFLocalizations.of(context).getText(
            'qgnqw0nv' /* Amount */,
          ),
          labelStyle: FlutterFlowTheme.of(context).displaySmall.override(
                font: GoogleFonts.lexend(
                  fontWeight: FontWeight.normal,
                  fontStyle:
                      FlutterFlowTheme.of(context).displaySmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).secondaryText,
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
          fillColor: FlutterFlowTheme.of(context).primaryText,
          contentPadding:
              EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 24.0, 24.0),
        ),
        style: FlutterFlowTheme.of(context).displaySmall.override(
              font: GoogleFonts.lexend(
                fontWeight:
                    FlutterFlowTheme.of(context).displaySmall.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
              ),
              color: FlutterFlowTheme.of(context).secondaryText,
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).displaySmall.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
            ),
        maxLines: null,
        keyboardType: TextInputType.number,
        validator: _model.inputTranferFundsBusinessTextControllerValidator
            .asValidator(context),
      ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation']!),
    );
  }
}
