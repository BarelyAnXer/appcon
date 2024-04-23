import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'sign_up_personal_model.dart';
export 'sign_up_personal_model.dart';

class SignUpPersonalWidget extends StatefulWidget {
  const SignUpPersonalWidget({super.key});

  @override
  State<SignUpPersonalWidget> createState() => _SignUpPersonalWidgetState();
}

class _SignUpPersonalWidgetState extends State<SignUpPersonalWidget> {
  late SignUpPersonalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignUpPersonalModel());

    _model.firstNametxtTextController ??= TextEditingController();
    _model.firstNametxtFocusNode ??= FocusNode();

    _model.middleNameTxtTextController ??= TextEditingController();
    _model.middleNameTxtFocusNode ??= FocusNode();

    _model.lastNameTxtTextController ??= TextEditingController();
    _model.lastNameTxtFocusNode ??= FocusNode();

    _model.suffixTxtTextController ??= TextEditingController();
    _model.suffixTxtFocusNode ??= FocusNode();

    _model.houseNumberTxtTextController ??= TextEditingController();
    _model.houseNumberTxtFocusNode ??= FocusNode();

    _model.steetTxtTextController ??= TextEditingController();
    _model.steetTxtFocusNode ??= FocusNode();

    _model.baranggayTxtTextController ??= TextEditingController();
    _model.baranggayTxtFocusNode ??= FocusNode();

    _model.municapilityTxtTextController ??= TextEditingController();
    _model.municapilityTxtFocusNode ??= FocusNode();

    _model.provinceTxtTextController ??= TextEditingController();
    _model.provinceTxtFocusNode ??= FocusNode();

    _model.zipCodeTxtTextController ??= TextEditingController();
    _model.zipCodeTxtFocusNode ??= FocusNode();

    _model.occupationTxtTextController ??= TextEditingController();
    _model.occupationTxtFocusNode ??= FocusNode();

    _model.nationalityTxtTextController1 ??= TextEditingController();
    _model.nationalityTxtFocusNode1 ??= FocusNode();

    _model.nationalityTxtTextController2 ??= TextEditingController();
    _model.nationalityTxtFocusNode2 ??= FocusNode();

    _model.contactTxtTextController ??= TextEditingController();
    _model.contactTxtFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: double.infinity,
            icon: const Icon(
              Icons.chevron_left,
              color: Color(0xFF0062D9),
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Text(
              'Sign Up',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: const Color(0xFF0062D9),
                    fontSize: 15.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: Icon(
                            Icons.circle_sharp,
                            color: Color(0xFFFF4342),
                            size: 10.0,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 250.0,
                          child: Divider(
                            thickness: 2.0,
                            color: Color(0xFF0062D9),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(25.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 117.0,
                      height: 27.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/PluShare_Text_Logo.png',
                          width: double.infinity,
                          height: 238.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              25.0, 0.0, 20.0, 0.0),
                          child: Text(
                            'Create \nAccount',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFFFF4342),
                                  fontSize: 46.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 25.0, 0.0),
                      child: Container(
                        width: 77.0,
                        height: 118.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(1.0, -1.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/sl_050622_50190_40_[Converted]_3.png',
                              width: double.infinity,
                              height: 137.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          width: 250.0,
                          child: Divider(
                            thickness: 2.0,
                            color: Color(0xFF0062D9),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.circle_sharp,
                            color: Color(0xFFFF4342),
                            size: 10.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0.0),
                        bottomRight: Radius.circular(20.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: Image.asset(
                        'assets/images/SideTask_Personal_Details.png',
                        width: 185.0,
                        height: 25.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 41.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Text(
                        'Be our hero and start saving lives! Make sure to complete the form below.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 800.0,
                  decoration: const BoxDecoration(),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Full Name',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: TextFormField(
                            controller: _model.firstNametxtTextController,
                            focusNode: _model.firstNametxtFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.firstNametxtTextController',
                              const Duration(milliseconds: 200),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Google Sans',
                                    color: const Color(0xFF0062D9),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF79ACE9),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF0062D9),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF0F6FD),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            validator: _model
                                .firstNametxtTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 0.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.middleNameTxtTextController,
                                  focusNode: _model.middleNameTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.middleNameTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Middle Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Google Sans',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  validator: _model
                                      .middleNameTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 0.0, 0.0),
                                child: TextFormField(
                                  controller: _model.lastNameTxtTextController,
                                  focusNode: _model.lastNameTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.lastNameTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Last Name',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Google Sans',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  validator: _model
                                      .lastNameTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 10.0, 0.0),
                                child: TextFormField(
                                  controller: _model.suffixTxtTextController,
                                  focusNode: _model.suffixTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.suffixTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Suffix',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Google Sans',
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  validator: _model
                                      .suffixTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Birthdate',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-0.06, 0.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                final datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: getCurrentTimestamp,
                                  firstDate: DateTime(1900),
                                  lastDate: getCurrentTimestamp,
                                  builder: (context, child) {
                                    return wrapInMaterialDatePickerTheme(
                                      context,
                                      child!,
                                      headerBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      headerForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      headerTextStyle:
                                          FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Outfit',
                                                fontSize: 32.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                      pickerBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      pickerForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      selectedDateTimeBackgroundColor:
                                          FlutterFlowTheme.of(context).primary,
                                      selectedDateTimeForegroundColor:
                                          FlutterFlowTheme.of(context).info,
                                      actionButtonForegroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryText,
                                      iconSize: 24.0,
                                    );
                                  },
                                );

                                if (datePickedDate != null) {
                                  safeSetState(() {
                                    _model.datePicked = DateTime(
                                      datePickedDate.year,
                                      datePickedDate.month,
                                      datePickedDate.day,
                                    );
                                  });
                                }
                                setState(() {
                                  _model.birthdate = _model.datePicked;
                                });
                              },
                              child: Container(
                                width: double.infinity,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFF0F6FD),
                                  borderRadius: BorderRadius.circular(15.0),
                                  border: Border.all(
                                    width: 0.5,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          dateTimeFormat(
                                              'yMMMd', _model.datePicked),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Roboto',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.calendar_month,
                                          color: Color(0xFF0062D9),
                                          size: 26.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 10.0, 0.0),
                                      child: Text(
                                        'Civil Status',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Google Sans',
                                              color: const Color(0xFF0062D9),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 5.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller: _model
                                                .chooseCivilValueController ??=
                                            FormFieldController<String>(
                                          _model.chooseCivilValue ??= 'Single',
                                        ),
                                        options: const [
                                          'Single',
                                          'Married',
                                          'Divorced',
                                          'Widowed'
                                        ],
                                        onChanged: (val) => setState(() =>
                                            _model.chooseCivilValue = val),
                                        width: 300.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Google Sans',
                                              color: const Color(0xFF0062D9),
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: const Color(0xFFF0F6FD),
                                        elevation: 2.0,
                                        borderColor: const Color(0xFF79ACE9),
                                        borderWidth: 0.5,
                                        borderRadius: 15.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 10.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 10.0, 0.0),
                                      child: Text(
                                        'Sex',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Google Sans',
                                              color: const Color(0xFF0062D9),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: FlutterFlowDropDown<String>(
                                        controller:
                                            _model.chooseSexValueController ??=
                                                FormFieldController<String>(
                                          _model.chooseSexValue ??= 'Male',
                                        ),
                                        options: const ['Male', 'Female'],
                                        onChanged: (val) => setState(
                                            () => _model.chooseSexValue = val),
                                        width: 300.0,
                                        height: 50.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Google Sans',
                                              color: const Color(0xFF0062D9),
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        icon: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                        fillColor: const Color(0xFFF0F6FD),
                                        elevation: 2.0,
                                        borderColor: const Color(0xFF79ACE9),
                                        borderWidth: 0.5,
                                        borderRadius: 15.0,
                                        margin: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 4.0, 16.0, 4.0),
                                        hidesUnderline: true,
                                        isOverButton: true,
                                        isSearchable: false,
                                        isMultiSelect: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Home Address',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 5.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.houseNumberTxtTextController,
                                  focusNode: _model.houseNumberTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.houseNumberTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'House Number',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .houseNumberTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 10.0, 0.0),
                                child: TextFormField(
                                  controller: _model.steetTxtTextController,
                                  focusNode: _model.steetTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.steetTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Street',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .steetTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 5.0, 0.0),
                                child: TextFormField(
                                  controller: _model.baranggayTxtTextController,
                                  focusNode: _model.baranggayTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.baranggayTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Barangay',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .baranggayTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 10.0, 0.0),
                                child: TextFormField(
                                  controller:
                                      _model.municapilityTxtTextController,
                                  focusNode: _model.municapilityTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.municapilityTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Municaplity',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .municapilityTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 5.0, 0.0),
                                child: TextFormField(
                                  controller: _model.provinceTxtTextController,
                                  focusNode: _model.provinceTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.provinceTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Province',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .provinceTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    5.0, 10.0, 10.0, 0.0),
                                child: TextFormField(
                                  controller: _model.zipCodeTxtTextController,
                                  focusNode: _model.zipCodeTxtFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.zipCodeTxtTextController',
                                    const Duration(milliseconds: 200),
                                    () => setState(() {}),
                                  ),
                                  autofocus: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Zip Code',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          color: const Color(0xFF0062D9),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF79ACE9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color(0xFF0062D9),
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 0.5,
                                      ),
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF0F6FD),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  validator: _model
                                      .zipCodeTxtTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Occupation',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: TextFormField(
                            controller: _model.occupationTxtTextController,
                            focusNode: _model.occupationTxtFocusNode,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.occupationTxtTextController',
                              const Duration(milliseconds: 200),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Google Sans',
                                    color: const Color(0xFF0062D9),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              hintText: '\"N/A\" if none',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: const Color(0xFFBFBDBD),
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF79ACE9),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF0062D9),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF0F6FD),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  color: const Color(0xFF808080),
                                  letterSpacing: 0.0,
                                ),
                            validator: _model
                                .occupationTxtTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Nationality',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: TextFormField(
                            controller: _model.nationalityTxtTextController1,
                            focusNode: _model.nationalityTxtFocusNode1,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.nationalityTxtTextController1',
                              const Duration(milliseconds: 200),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Google Sans',
                                    color: const Color(0xFF0062D9),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              hintText: 'Filipino, American, & etc....',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: const Color(0xFFBFBDBD),
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF79ACE9),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF0062D9),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF0F6FD),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model
                                .nationalityTxtTextController1Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Religion',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: TextFormField(
                            controller: _model.nationalityTxtTextController2,
                            focusNode: _model.nationalityTxtFocusNode2,
                            onChanged: (_) => EasyDebounce.debounce(
                              '_model.nationalityTxtTextController2',
                              const Duration(milliseconds: 200),
                              () => setState(() {}),
                            ),
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Google Sans',
                                    color: const Color(0xFF0062D9),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                              hintText: 'Roman Catholic, Christian, & etc....',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: const Color(0xFFBFBDBD),
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF79ACE9),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF0062D9),
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 0.5,
                                ),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: const Color(0xFFF0F6FD),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Roboto',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model
                                .nationalityTxtTextController2Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Blood Type',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: StreamBuilder<List<BloodInventoryRecord>>(
                            stream: queryBloodInventoryRecord(
                              queryBuilder: (bloodInventoryRecord) =>
                                  bloodInventoryRecord.orderBy('bloodtype'),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        FlutterFlowTheme.of(context).primary,
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<BloodInventoryRecord>
                                  chooseBloodTypeBloodInventoryRecordList =
                                  snapshot.data!;
                              return FlutterFlowDropDown<String>(
                                controller:
                                    _model.chooseBloodTypeValueController ??=
                                        FormFieldController<String>(
                                  _model.chooseBloodTypeValue ??=
                                      chooseBloodTypeBloodInventoryRecordList
                                          .first.bloodtype,
                                ),
                                options: chooseBloodTypeBloodInventoryRecordList
                                    .map((e) => e.bloodtype)
                                    .toList(),
                                onChanged: (val) => setState(
                                    () => _model.chooseBloodTypeValue = val),
                                width: 300.0,
                                height: 50.0,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Google Sans',
                                      color: const Color(0xFF0062D9),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                                hintText: 'Select Your Blood Type',
                                icon: Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                fillColor: const Color(0xFFF0F6FD),
                                elevation: 2.0,
                                borderColor: const Color(0xFF79ACE9),
                                borderWidth: 0.5,
                                borderRadius: 15.0,
                                margin: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 16.0, 4.0),
                                hidesUnderline: true,
                                isOverButton: true,
                                isSearchable: false,
                                isMultiSelect: false,
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Text(
                            'Contact Number',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0062D9),
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 0.0),
                          child: Stack(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            children: [
                              TextFormField(
                                controller: _model.contactTxtTextController,
                                focusNode: _model.contactTxtFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.contactTxtTextController',
                                  const Duration(milliseconds: 200),
                                  () => setState(() {}),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Google Sans',
                                        color: const Color(0xFF0062D9),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Roboto',
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF79ACE9),
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xFF0062D9),
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 0.5,
                                    ),
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  filled: true,
                                  fillColor: const Color(0xFFF0F6FD),
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          70.0, 0.0, 0.0, 0.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Roboto',
                                      letterSpacing: 0.0,
                                    ),
                                maxLength: 10,
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                buildCounter: (context,
                                        {required currentLength,
                                        required isFocused,
                                        maxLength}) =>
                                    null,
                                validator: _model
                                    .contactTxtTextControllerValidator
                                    .asValidator(context),
                              ),
                              Container(
                                width: 57.0,
                                height: 48.0,
                                decoration: BoxDecoration(
                                  color: const Color(0x00FFFFFF),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15.0),
                                    bottomRight: Radius.circular(15.0),
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                  ),
                                  border: Border.all(
                                    color: const Color(0xFF4DA1E7),
                                  ),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    '+63',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Roboto',
                                          color: const Color(0xFF0062D9),
                                          fontSize: 15.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              30.0, 30.0, 30.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              if (_model.datePicked == null) {
                                return;
                              }
                              if (_model.chooseCivilValue == null) {
                                return;
                              }
                              if (_model.chooseSexValue == null) {
                                return;
                              }
                              if (_model.chooseBloodTypeValue == null) {
                                return;
                              }

                              context.pushNamed(
                                'SignUpAccount',
                                queryParameters: {
                                  'firstname': serializeParam(
                                    _model.firstNametxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'middlename': serializeParam(
                                    _model.middleNameTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'lastname': serializeParam(
                                    _model.lastNameTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'suffix': serializeParam(
                                    _model.suffixTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'birthdate': serializeParam(
                                    _model.datePicked,
                                    ParamType.DateTime,
                                  ),
                                  'civilstatus': serializeParam(
                                    _model.chooseCivilValue,
                                    ParamType.String,
                                  ),
                                  'sex': serializeParam(
                                    _model.chooseSexValue,
                                    ParamType.String,
                                  ),
                                  'housenumber': serializeParam(
                                    _model.houseNumberTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'street': serializeParam(
                                    _model.steetTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'barangay': serializeParam(
                                    _model.baranggayTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'municipality': serializeParam(
                                    _model.municapilityTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'province': serializeParam(
                                    _model.provinceTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'zipcode': serializeParam(
                                    _model.zipCodeTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'occupation': serializeParam(
                                    _model.occupationTxtTextController.text,
                                    ParamType.String,
                                  ),
                                  'nationality': serializeParam(
                                    _model.nationalityTxtTextController1.text,
                                    ParamType.String,
                                  ),
                                  'religion': serializeParam(
                                    _model.nationalityTxtTextController2.text,
                                    ParamType.String,
                                  ),
                                  'bloodtype': serializeParam(
                                    _model.chooseBloodTypeValue,
                                    ParamType.String,
                                  ),
                                  'contactnubmer': serializeParam(
                                    _model.contactTxtTextController.text,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            text: 'Next',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 40.0,
                              padding: const EdgeInsets.all(0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: const Color(0xFF4DA1E7),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 3.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
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
        ),
      ),
    );
  }
}
