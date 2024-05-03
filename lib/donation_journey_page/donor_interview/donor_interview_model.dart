import '/flutter_flow/flutter_flow_util.dart';
import 'donor_interview_widget.dart' show DonorInterviewWidget;
import 'package:flutter/material.dart';

class DonorInterviewModel extends FlutterFlowModel<DonorInterviewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
