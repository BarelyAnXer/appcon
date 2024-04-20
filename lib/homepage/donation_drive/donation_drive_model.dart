import '/flutter_flow/flutter_flow_util.dart';
import 'donation_drive_widget.dart' show DonationDriveWidget;
import 'package:flutter/material.dart';

class DonationDriveModel extends FlutterFlowModel<DonationDriveWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
