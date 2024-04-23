import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_account_widget.dart' show SignUpAccountWidget;
import 'package:flutter/material.dart';

class SignUpAccountModel extends FlutterFlowModel<SignUpAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for emailTxt widget.
  FocusNode? emailTxtFocusNode;
  TextEditingController? emailTxtTextController;
  String? Function(BuildContext, String?)? emailTxtTextControllerValidator;
  String? _emailTxtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for passwordTxt widget.
  FocusNode? passwordTxtFocusNode;
  TextEditingController? passwordTxtTextController;
  late bool passwordTxtVisibility;
  String? Function(BuildContext, String?)? passwordTxtTextControllerValidator;
  String? _passwordTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for confirmPasswordTxt widget.
  FocusNode? confirmPasswordTxtFocusNode;
  TextEditingController? confirmPasswordTxtTextController;
  late bool confirmPasswordTxtVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTxtTextControllerValidator;
  String? _confirmPasswordTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {
    emailTxtTextControllerValidator = _emailTxtTextControllerValidator;
    passwordTxtVisibility = false;
    passwordTxtTextControllerValidator = _passwordTxtTextControllerValidator;
    confirmPasswordTxtVisibility = false;
    confirmPasswordTxtTextControllerValidator =
        _confirmPasswordTxtTextControllerValidator;
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
