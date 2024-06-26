import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'part2_model.dart';
export 'part2_model.dart';

class Part2Widget extends StatefulWidget {
  const Part2Widget({
    super.key,
    required this.bloodstockid,
  });

  final DocumentReference? bloodstockid;

  @override
  State<Part2Widget> createState() => _Part2WidgetState();
}

class _Part2WidgetState extends State<Part2Widget> {
  late Part2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Part2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.yesOrNo = FFAppState().part2.yesOrNo.toList().cast<int>();
        _model.remarks = FFAppState().part2.remarks.toList().cast<String>();
        _model.counter = FFAppState().part2.counter;
      });
    });

    _model.textController ??=
        TextEditingController(text: _model.remarks[_model.counter!]);
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF333333),
              size: 20.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Donor Interview',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: const Color(0xFF333333),
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.counter == 1) {
                            setState(() {
                              _model.counter = _model.counter;
                            });
                          } else {
                            setState(() {
                              _model.counter = _model.counter! + -1;
                            });
                          }

                          setState(() {
                            FFAppState().updatePart2Struct(
                              (e) => e..counter = _model.counter,
                            );
                          });
                        },
                        child: Container(
                          width: 100.0,
                          height: 59.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Color(0xFF0062D9),
                                  size: 24.0,
                                ),
                              ),
                              Text(
                                'Back',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: const Color(0xFF0062D9),
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.counter !=
                              (_model.questionsEnglish.length - 1)) {
                            setState(() {
                              _model.counter = _model.counter! + 1;
                            });
                            setState(() {
                              FFAppState().updatePart2Struct(
                                (e) => e..counter = _model.counter,
                              );
                            });
                          }
                        },
                        child: Container(
                          height: 59.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Text(
                                  'Next',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: const Color(0xFF0062D9),
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_rounded,
                                color: Color(0xFF0062D9),
                                size: 24.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Question ',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF333333),
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      Text(
                        '${_model.counter?.toString()} / ${(_model.questionsEnglish.length - 1).toString()}',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF333333),
                              fontSize: 25.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            setState(() {
                              _model.counter = 999;
                            });
                          },
                          child: Container(
                            width: 35.0,
                            height: 35.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF0062D9),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.volume_up,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Press to Hear Questions',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        () {
                          if (_model.language == 'tagalog') {
                            return _model.questionsTagalog[_model.counter!];
                          } else if (_model.language == 'english') {
                            return _model.questionsEnglish[_model.counter!];
                          } else {
                            return 'debug';
                          }
                        }(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 17.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          _model.updateYesOrNoAtIndex(
                            _model.counter!,
                            (_) => () {
                              if (_model.yesOrNo[_model.counter!] == 0) {
                                return 1;
                              } else if (_model.yesOrNo[_model.counter!] == 1) {
                                return 0;
                              } else if (_model.yesOrNo[_model.counter!] == 2) {
                                return 1;
                              } else {
                                return 69;
                              }
                            }(),
                          );
                        });
                        setState(() {
                          FFAppState().updatePart2Struct(
                            (e) => e
                              ..updateYesOrNo(
                                (e) => e[_model.counter!] =
                                    _model.yesOrNo[_model.counter!],
                              ),
                          );
                        });
                      },
                      text: 'YES',
                      options: FFButtonOptions(
                        width: 359.0,
                        height: 45.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: () {
                          if (_model.yesOrNo[_model.counter!] == 0) {
                            return const Color(0xFFEBEBEB);
                          } else if (_model.yesOrNo[_model.counter!] == 1) {
                            return const Color(0xFF0163DA);
                          } else if (_model.yesOrNo[_model.counter!] == 2) {
                            return const Color(0xFFEBEBEB);
                          } else {
                            return FlutterFlowTheme.of(context).tertiary;
                          }
                        }(),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Roboto',
                              color: () {
                                if (_model.yesOrNo[_model.counter!] == 0) {
                                  return const Color(0x33333333);
                                } else if (_model.yesOrNo[_model.counter!] ==
                                    1) {
                                  return Colors.white;
                                } else if (_model.yesOrNo[_model.counter!] ==
                                    2) {
                                  return const Color(0x33333333);
                                } else {
                                  return const Color(0xFFEE8B60);
                                }
                              }(),
                              letterSpacing: 0.0,
                            ),
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          _model.updateYesOrNoAtIndex(
                            _model.counter!,
                            (_) => () {
                              if (_model.yesOrNo[_model.counter!] == 0) {
                                return 2;
                              } else if (_model.yesOrNo[_model.counter!] == 1) {
                                return 2;
                              } else if (_model.yesOrNo[_model.counter!] == 2) {
                                return 0;
                              } else {
                                return 69;
                              }
                            }(),
                          );
                        });
                        setState(() {
                          FFAppState().updatePart2Struct(
                            (e) => e
                              ..updateYesOrNo(
                                (e) => e[_model.counter!] =
                                    _model.yesOrNo[_model.counter!],
                              ),
                          );
                        });
                      },
                      text: 'NO',
                      options: FFButtonOptions(
                        width: 359.0,
                        height: 45.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: () {
                          if (_model.yesOrNo[_model.counter!] == 0) {
                            return const Color(0xFFEBEBEB);
                          } else if (_model.yesOrNo[_model.counter!] == 1) {
                            return const Color(0xFFEBEBEB);
                          } else if (_model.yesOrNo[_model.counter!] == 2) {
                            return const Color(0xFF0163DA);
                          } else {
                            return FlutterFlowTheme.of(context).tertiary;
                          }
                        }(),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Poppins',
                              color: () {
                                if (_model.yesOrNo[_model.counter!] == 0) {
                                  return const Color(0x33333333);
                                } else if (_model.yesOrNo[_model.counter!] ==
                                    1) {
                                  return const Color(0x3333333333);
                                } else if (_model.yesOrNo[_model.counter!] ==
                                    2) {
                                  return Colors.white;
                                } else {
                                  return FlutterFlowTheme.of(context).tertiary;
                                }
                              }(),
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                            ),
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'Remarks',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              color: const Color(0xFF333333),
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.textController',
                        const Duration(milliseconds: 100),
                        () async {
                          setState(() {
                            _model.updateRemarksAtIndex(
                              _model.counter!,
                              (_) => _model.textController.text,
                            );
                          });
                          setState(() {
                            FFAppState().updatePart1Struct(
                              (e) => e
                                ..updateRemarks(
                                  (e) => e[_model.counter!] =
                                      _model.textController.text,
                                ),
                            );
                            FFAppState().updatePart2Struct(
                              (e) => e
                                ..updateRemarks(
                                  (e) => e[_model.counter!] =
                                      _model.textController.text,
                                ),
                            );
                          });
                        },
                      ),
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                        alignLabelWithHint: false,
                        hintText: 'Remarks...',
                        hintStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF545454),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).error,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 32.0, 20.0, 12.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Roboto',
                            letterSpacing: 0.0,
                          ),
                      textAlign: TextAlign.start,
                      maxLines: 5,
                      keyboardType: TextInputType.multiline,
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFFE1ECFB),
                        shape: BoxShape.circle,
                      ),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('BDISAnswerSheet');
                        },
                        child: const Icon(
                          Icons.mic_none,
                          color: Color(0xFF0062D9),
                          size: 70.0,
                        ),
                      ),
                    ),
                  ),
                  if (_model.counter == (_model.questionsEnglish.length - 1))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await actions.putPart2(
                            widget.bloodstockid?.id,
                            QandAStruct(
                              question: _model.questionsEnglish,
                              remarks: _model.remarks,
                              yesOrNo: _model.yesOrNo,
                            ),
                          );

                          await widget.bloodstockid!
                              .update(createBloodStocksRecordData(
                            hasPart2Answered: true,
                          ));
                        },
                        text: 'DONE',
                        options: FFButtonOptions(
                          width: 250.0,
                          height: 45.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF0163DA),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(2.0),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
