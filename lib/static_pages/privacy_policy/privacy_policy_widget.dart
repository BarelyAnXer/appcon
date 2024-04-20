import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());
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
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Privacy Policy',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Google Sans',
                  color: const Color(0xFF0163DA),
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: false,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const Flexible(
                          child: Icon(
                            Icons.av_timer,
                            color: Color(0xFF0163DA),
                            size: 20.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Last Updated: 04 April 2024',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Google Sans',
                                  color: const Color(0xFF0163DA),
                                  fontSize: 13.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
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
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'GENERAL',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'The Company’s Privacy Policy (the “Privacy Policy”), as may be amended from time to time and may be accessible through the Application, is hereby incorporated by reference to these Terms of Use. The Privacy Policy explains how we use the information you disclose to the Company in availing of the Service and in using the Application. The Company takes utmost care to never disclose your data and information, except to the extent necessary to inform the users of the identity of their telemedicine consultation provider, to render telemedicine services, upon your request, if the same is necessary to comply with legal, statutory, or investigative law enforcement requirements, or as otherwise provided in the Privacy Policy.minimum legal age or at least 18 years of age and have the legal capacity and authority to bind yourself to these Terms of Use and agree to be bound by the terms hereof. The Company reserves the right to deny or revoke access to the Service or any part thereof through the Application to any person, at any time in its sole discretion, with or without cause. The Company may report to law enforcement authorities any action that may be illegal, and any report it receives of such conduct. When legally required, the Company will cooperate with regulatory, judicial, or law enforcement agencies in any investigation of alleged illegal activity conducted or carried out in availing the Service or through the use of the Application. You are responsible for all activities that occur in your account, and you agree to notify the Company immediately of any unauthorized use of your account. The Company is in no way responsible for any loss that you may incur as a result of any unauthorized use of your user account and password.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'DATA SHARING AGREMENT',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'You acknowledge that the Data will be shared between you and us through the Application which are encrypted and has security features that will prevent unauthorized access. You will not transmit any document containing Data through facsimile or other unencrypted means.\n\nYou agree that you will (a) not disclose, trade, sell or transfer any Data to any person without our prior written instruction; (b) not use or process the Data except in connection with the purposes provided herein; (c) as applicable, allow Data Subjects to access and correct the Data in your custody and to exercise their rights under the DPA, (d) notify us if you receive from us any Data that is not covered by this clause, and (e) comply with our Cybersecurity Policy.\n\nEach of you and us represents and warrants that (a) the collection and processing of Data contemplated herein adheres to the principles of transparency, legitimate purpose and proportionality, (b) we will fully comply with the provisions of these Terms of Use and the DPA, (c) these Terms of Use shall be made available for review of the NPC in cases required under the DPA; and (d) the rights of the Data Subjects shall be upheld without compromising data integrity.\n\nWe represent and warrant that (a) prior to collecting the Data, or prior to the sharing of the Data, we will secure the consent of the Data Subject with respect to the collection and further processing of the Data and the sharing, storage, transfer and transmission of the same in accordance with these Terms of Use. We will secure the Data Subject’s consent through written, electronic or recorded means, and (b) we will provide the following information to the Data Subjects prior to the collection or sharing of Data, (i) identity of the third parties who will be given access to the Data, (ii) purpose of the data sharing, (iii) categories of Data concerned, (iv) intended recipients of categories of recipients of the Data, (v) existence of the rights of the Data Subjects, including the right to access and to correct the Data, and the right to object to Data sharing or further processing, (vi) if applicable, the automated processing of the Data for profiling, and (vii) other information that would sufficiently notify the Data Subject of the nature and extent of Data sharing and manner of processing.\n\nEach of you and us will implement reasonable and appropriate physical, technical, and organizational measures for the protection of Data, with the aim to maintain the availability integrity and confidentiality of Data and protect them against natural dangers such as accidental loss or destruction, and human dangers such as unlawful access, fraudulent misuse, unlawful destruction, alteration and contamination.\n\nIn the event of a Personal Data Breach involving the Data while the same is being processed by you or is in your custody or control, you agree to immediately notify us in writing, and in no case later than six (6) hours upon knowledge of the same, or when you have reasonable belief that a Personal Data Breach has occurred. Your notification shall describe the nature of the breach, the type of Data possibly involved, the list of Data Subjects involved, the possible risks, harm or damage to the Data Subjects and the measures taken by you to address the breach. You agree to include as well your assessment of whether there is a need to notify the NPC and the Data Subjects of the breach for our consideration.\n\nThis specific clause shall be co-terminus with the Terms of Use which constitutes a legally binding agreement between us, provided that this Clause 17 and any extension thereof shall in no case be for more than five (5) years.\n\nUpon the termination of your availment of the Service, or upon our request, you shall promptly destroy, dispose or surrender to us, as applicable, the Data and other information and documents containing the Data in your possession and if requested by us, you agree to certify that the Data and/or copies thereof in your possession have been destroyed, disposed of, surrendered or returned in compliance with this paragraph.\n\nAs applicable, each of you and us shall ensure that the following rights of the Data Subjects are upheld:',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'AVAILABILITY OF THESE TERMS AND USE',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'A copy of these Terms of Use may be accessed by a Data Subject through email upon written request, provided that the parties have a right to prevent the disclosure of any detail or information that could endanger the security measures set out herein or expose to harm the integrity, availability, or confidentiality of Data under its control or custody.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'ACCESS TO INFORMATION',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'Upon the request of a Data Subject, the concerned party may release to the requesting Data Subject the following information with respect to his Data: Contents of his/her Data that were processed; Sources from which his/her Data were obtained; Names and addresses of the recipients of his/her Data; Manner by which his/her Data was processed; Reasons for the disclosure of his/her Data to recipients, if any; Date when his/her Data was last accessed or modified; and The identity and address of the owner of the Data.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'CORRECTION OF DATA',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'The concerned party may provide to the Data Subject the means and methods whereby the Data Subject may dispute the inaccuracy or error in the Data and correct the Data immediately and accordingly, unless the request is vexatious or otherwise unreasonable. The concerned Party shall inform the other Party of the correction or rectification.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Text(
                        'DELETION OF DATA',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Text(
                        'The concerned Party may provide to the Data Subject the means and methods whereby the Data Subject may order the blocking, removal, or destruction of his/her Data.',
                        textAlign: TextAlign.justify,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Google Sans',
                              color: const Color(0xFF333333),
                              fontSize: 15.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              useGoogleFonts: false,
                            ),
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
