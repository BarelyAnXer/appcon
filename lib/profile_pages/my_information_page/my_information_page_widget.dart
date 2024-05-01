import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'my_information_page_model.dart';
export 'my_information_page_model.dart';

class MyInformationPageWidget extends StatefulWidget {
  const MyInformationPageWidget({super.key});

  @override
  State<MyInformationPageWidget> createState() =>
      _MyInformationPageWidgetState();
}

class _MyInformationPageWidgetState extends State<MyInformationPageWidget> {
  late MyInformationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyInformationPageModel());
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
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF0062D9),
              size: 20.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'My Information',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Poppins',
                  color: const Color(0xFF0062D9),
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        final selectedMedia =
                            await selectMediaWithSourceBottomSheet(
                          context: context,
                          allowPhoto: true,
                        );
                        if (selectedMedia != null &&
                            selectedMedia.every((m) =>
                                validateFileFormat(m.storagePath, context))) {
                          setState(() => _model.isDataUploading = true);
                          var selectedUploadedFiles = <FFUploadedFile>[];

                          var downloadUrls = <String>[];
                          try {
                            selectedUploadedFiles = selectedMedia
                                .map((m) => FFUploadedFile(
                                      name: m.storagePath.split('/').last,
                                      bytes: m.bytes,
                                      height: m.dimensions?.height,
                                      width: m.dimensions?.width,
                                      blurHash: m.blurHash,
                                    ))
                                .toList();

                            downloadUrls = (await Future.wait(
                              selectedMedia.map(
                                (m) async =>
                                    await uploadData(m.storagePath, m.bytes),
                              ),
                            ))
                                .where((u) => u != null)
                                .map((u) => u!)
                                .toList();
                          } finally {
                            _model.isDataUploading = false;
                          }
                          if (selectedUploadedFiles.length ==
                                  selectedMedia.length &&
                              downloadUrls.length == selectedMedia.length) {
                            setState(() {
                              _model.uploadedLocalFile =
                                  selectedUploadedFiles.first;
                              _model.uploadedFileUrl = downloadUrls.first;
                            });
                          } else {
                            setState(() {});
                            return;
                          }
                        }
                      },
                      child: Container(
                        width: 130.0,
                        height: 130.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.network(
                              () {
                                if (_model.uploadedFileUrl != '') {
                                  return _model.uploadedFileUrl;
                                } else if (currentUserPhoto != '') {
                                  return currentUserPhoto;
                                } else {
                                  return 'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png';
                                }
                              }(),
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await currentUserReference!.update(createUsersRecordData(
                        photoUrl: _model.uploadedFileUrl,
                      ));

                      context.pushNamed('ProfilePage');
                    },
                    text: 'Save Image',
                    icon: const Icon(
                      Icons.camera_alt,
                      size: 15.0,
                    ),
                    options: FFButtonOptions(
                      width: 140.0,
                      height: 20.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: const Color(0xFFFFD9D9),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Google Sans',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 10.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                      elevation: 0.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: AuthUserStreamWidget(
                    builder: (context) => Text(
                      '${valueOrDefault(currentUserDocument?.firstname, '')} ${valueOrDefault(currentUserDocument?.middlename, '')} ${valueOrDefault(currentUserDocument?.lastname, '')}',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Google Sans',
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Text(
                  currentUserEmail,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Google Sans',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: false,
                      ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Date of Birth',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Google Sans',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 5.0, 0.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        dateTimeFormat(
                            'yMMMd', currentUserDocument!.birthdate!),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(
                        thickness: 1.0,
                        color: Color(0xFF7D7D7D),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Sex',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Google Sans',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 5.0, 0.0, 0.0),
                    child: AuthUserStreamWidget(
                      builder: (context) => Text(
                        valueOrDefault(currentUserDocument?.gender, ''),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(
                        thickness: 1.0,
                        color: Color(0xFF7D7D7D),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Civil Status',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Google Sans',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                18.0, 5.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Text(
                                valueOrDefault(
                                    currentUserDocument?.civilStatus, ''),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Google Sans',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('EditCivilStatus');
                        },
                        text: 'Edit',
                        icon: const Icon(
                          Icons.edit_square,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 110.0,
                          height: 20.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFFFD9D9),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Google Sans',
                                    color: const Color(0xFFFF4342),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(
                        thickness: 1.0,
                        color: Color(0xFF7D7D7D),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Nationality',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Google Sans',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              18.0, 5.0, 0.0, 0.0),
                          child: AuthUserStreamWidget(
                            builder: (context) => Text(
                              valueOrDefault(
                                  currentUserDocument?.nationality, ''),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Google Sans',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(
                        thickness: 1.0,
                        color: Color(0xFF7D7D7D),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Home Address',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Google Sans',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Wrap(
                          spacing: 0.0,
                          runSpacing: 0.0,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          direction: Axis.horizontal,
                          runAlignment: WrapAlignment.start,
                          verticalDirection: VerticalDirection.down,
                          clipBehavior: Clip.none,
                          children: [
                            Align(
                              alignment: const AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: AuthUserStreamWidget(
                                  builder: (context) => Text(
                                    '${valueOrDefault(currentUserDocument?.houseno, '')} ${valueOrDefault(currentUserDocument?.street, '')} ${valueOrDefault(currentUserDocument?.barangay, '')}  ${valueOrDefault(currentUserDocument?.province, '')} ${valueOrDefault(currentUserDocument?.zipcode, '')}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Google Sans',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('EditAddress');
                        },
                        text: 'Edit',
                        icon: const Icon(
                          Icons.edit_square,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 110.0,
                          height: 20.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFFFD9D9),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Google Sans',
                                    color: const Color(0xFFFF4342),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(
                        thickness: 1.0,
                        color: Color(0xFF7D7D7D),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Occupation',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Google Sans',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                18.0, 5.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Text(
                                valueOrDefault(
                                    currentUserDocument?.occupation, ''),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Google Sans',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('EditOccupation');
                        },
                        text: 'Edit',
                        icon: const Icon(
                          Icons.edit_square,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 110.0,
                          height: 20.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFFFD9D9),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Google Sans',
                                    color: const Color(0xFFFF4342),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Divider(
                        thickness: 1.0,
                        color: Color(0xFF7D7D7D),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(18.0, 20.0, 0.0, 0.0),
                    child: Text(
                      'Contact Number',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Google Sans',
                            fontSize: 10.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Flexible(
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                18.0, 5.0, 0.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Text(
                                currentPhoneNumber,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Google Sans',
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('EditContact');
                        },
                        text: 'Edit',
                        icon: const Icon(
                          Icons.edit_square,
                          size: 15.0,
                        ),
                        options: FFButtonOptions(
                          width: 110.0,
                          height: 20.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFFFD9D9),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Google Sans',
                                    color: const Color(0xFFFF4342),
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 18.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Divider(
                        thickness: 1.0,
                        color: Color(0xFF7D7D7D),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          GoRouter.of(context).prepareAuthEvent();
                          await authManager.signOut();
                          GoRouter.of(context).clearRedirectLocation();

                          context.goNamedAuth('LogInPlus', context.mounted);
                        },
                        text: 'Logout',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ],
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
