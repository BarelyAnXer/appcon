import '/flutter_flow/flutter_flow_util.dart';
import 'edit_contact_widget.dart' show EditContactWidget;
import 'package:flutter/material.dart';

class EditContactModel extends FlutterFlowModel<EditContactWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for contactTxt widget.
  FocusNode? contactTxtFocusNode;
  TextEditingController? contactTxtTextController;
  String? Function(BuildContext, String?)? contactTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    contactTxtFocusNode?.dispose();
    contactTxtTextController?.dispose();
  }
}
