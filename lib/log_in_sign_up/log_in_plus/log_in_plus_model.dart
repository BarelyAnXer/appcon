import '/flutter_flow/flutter_flow_util.dart';
import 'log_in_plus_widget.dart' show LogInPlusWidget;
import 'package:flutter/material.dart';

class LogInPlusModel extends FlutterFlowModel<LogInPlusWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode1;
  TextEditingController? emailTxtTextController1;
  String? Function(BuildContext, String?)? emailTxtTextController1Validator;
  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode2;
  TextEditingController? emailTxtTextController2;
  late bool emailTxtVisibility;
  String? Function(BuildContext, String?)? emailTxtTextController2Validator;

  @override
  void initState(BuildContext context) {
    emailTxtVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTxtFocusNode1?.dispose();
    emailTxtTextController1?.dispose();

    emailTxtFocusNode2?.dispose();
    emailTxtTextController2?.dispose();
  }
}
