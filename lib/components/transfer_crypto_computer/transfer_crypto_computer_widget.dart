import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'transfer_crypto_computer_model.dart';
export 'transfer_crypto_computer_model.dart';

class TransferCryptoComputerWidget extends StatefulWidget {
  const TransferCryptoComputerWidget({super.key});

  @override
  State<TransferCryptoComputerWidget> createState() =>
      _TransferCryptoComputerWidgetState();
}

class _TransferCryptoComputerWidgetState
    extends State<TransferCryptoComputerWidget> with TickerProviderStateMixin {
  late TransferCryptoComputerModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransferCryptoComputerModel());

    _model.tranferCryptoComputerTextController ??= TextEditingController();
    _model.tranferCryptoComputerFocusNode ??= FocusNode();

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
        controller: _model.tranferCryptoComputerTextController,
        focusNode: _model.tranferCryptoComputerFocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.tranferCryptoComputerTextController',
          Duration(milliseconds: 0),
          () async {
            safeSetState(() {
              _model.tranferCryptoComputerTextController?.text =
                  functions.convertCurrency(
                      _model.tranferCryptoComputerTextController.text, false)!;
              _model.tranferCryptoComputerFocusNode?.requestFocus();
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _model.tranferCryptoComputerTextController?.selection =
                    TextSelection.collapsed(
                  offset:
                      _model.tranferCryptoComputerTextController!.text.length,
                );
              });
            });
          },
        ),
        obscureText: false,
        decoration: InputDecoration(
          labelText: FFLocalizations.of(context).getText(
            'tk4ci1i1' /* Amount */,
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
        keyboardType: TextInputType.number,
        validator: _model.tranferCryptoComputerTextControllerValidator
            .asValidator(context),
      ).animateOnPageLoad(animationsMap['textFieldOnPageLoadAnimation']!),
    );
  }
}
