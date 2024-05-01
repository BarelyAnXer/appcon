import '/flutter_flow/flutter_flow_util.dart';
import 'log_in_plus_widget.dart' show LogInPlusWidget;
import 'package:flutter/material.dart';

class LogInPlusModel extends FlutterFlowModel<LogInPlusWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode;
  TextEditingController? emailTxtTextController;
  String? Function(BuildContext, String?)? emailTxtTextControllerValidator;
  // State field(s) for passwordTxt widget.
  FocusNode? passwordTxtFocusNode;
  TextEditingController? passwordTxtTextController;
  late bool passwordTxtVisibility;
  String? Function(BuildContext, String?)? passwordTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordTxtVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTxtFocusNode?.dispose();
    emailTxtTextController?.dispose();

    passwordTxtFocusNode?.dispose();
    passwordTxtTextController?.dispose();
  }
}
