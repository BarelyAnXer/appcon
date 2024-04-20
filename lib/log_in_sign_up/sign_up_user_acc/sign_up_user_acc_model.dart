import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_user_acc_widget.dart' show SignUpUserAccWidget;
import 'package:flutter/material.dart';

class SignUpUserAccModel extends FlutterFlowModel<SignUpUserAccWidget> {
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
  // State field(s) for confirmPasswordTxt widget.
  FocusNode? confirmPasswordTxtFocusNode;
  TextEditingController? confirmPasswordTxtTextController;
  late bool confirmPasswordTxtVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordTxtVisibility = false;
    confirmPasswordTxtVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailTxtFocusNode?.dispose();
    emailTxtTextController?.dispose();

    passwordTxtFocusNode?.dispose();
    passwordTxtTextController?.dispose();

    confirmPasswordTxtFocusNode?.dispose();
    confirmPasswordTxtTextController?.dispose();
  }
}
