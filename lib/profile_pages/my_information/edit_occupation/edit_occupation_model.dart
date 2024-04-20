import '/flutter_flow/flutter_flow_util.dart';
import 'edit_occupation_widget.dart' show EditOccupationWidget;
import 'package:flutter/material.dart';

class EditOccupationModel extends FlutterFlowModel<EditOccupationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for occupationTxt widget.
  FocusNode? occupationTxtFocusNode;
  TextEditingController? occupationTxtTextController;
  String? Function(BuildContext, String?)? occupationTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    occupationTxtFocusNode?.dispose();
    occupationTxtTextController?.dispose();
  }
}
