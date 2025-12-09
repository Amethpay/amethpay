import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'imput_currence_computer_model.dart';
export 'imput_currence_computer_model.dart';

class ImputCurrenceComputerWidget extends StatefulWidget {
  const ImputCurrenceComputerWidget({super.key});

  @override
  State<ImputCurrenceComputerWidget> createState() =>
      _ImputCurrenceComputerWidgetState();
}

class _ImputCurrenceComputerWidgetState
    extends State<ImputCurrenceComputerWidget> with TickerProviderStateMixin {
  late ImputCurrenceComputerModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImputCurrenceComputerModel());

    _model.imputCurrenceComputerTextController ??= TextEditingController();
    _model.imputCurrenceComputerFocusNode ??= FocusNode();

    _model.imputCurrenceComputerMask =
        MaskTextInputFormatter(mask: '#.###.###.###,##');
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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 10.0),
      child: TextFormField(
        controller: _model.imputCurrenceComputerTextController,
        focusNode: _model.imputCurrenceComputerFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.imputCurrenceComputerTextController',
          Duration(milliseconds: 0),
          () async {
            safeSetState(() {
              _model.imputCurrenceComputerTextController?.text =
                  functions.convertCurrency(
                      _model.imputCurrenceComputerTextController.text, true)!;
              _model.imputCurrenceComputerFocusNode?.requestFocus();
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _model.imputCurrenceComputerTextController?.selection =
                    TextSelection.collapsed(
                  offset:
                      _model.imputCurrenceComputerTextController!.text.length,
                );
              });
              _model.imputCurrenceComputerMask.updateMask(
                newValue: TextEditingValue(
                  text: _model.imputCurrenceComputerTextController!.text,
                  selection: TextSelection.collapsed(
                    offset:
                        _model.imputCurrenceComputerTextController!.text.length,
                  ),
                ),
              );
            });
          },
        ),
        obscureText: false,
        decoration: InputDecoration(
          labelText: FFLocalizations.of(context).getText(
            '0hqfldew' /* Amount */,
          ),
          labelStyle: FlutterFlowTheme.of(context).displaySmall.override(
                font: GoogleFonts.lexend(
                  fontWeight: FontWeight.normal,
                  fontStyle:
                      FlutterFlowTheme.of(context).displaySmall.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).grayLight,
                fontSize: 20.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
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
              fontSize: 20.0,
              letterSpacing: 0.0,
              fontWeight: FontWeight.normal,
              fontStyle: FlutterFlowTheme.of(context).displaySmall.fontStyle,
            ),
        maxLines: null,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        validator: _model.imputCurrenceComputerTextControllerValidator
            .asValidator(context),
        inputFormatters: [_model.imputCurrenceComputerMask],
      ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation']!),
    );
  }
}
