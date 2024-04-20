import '/flutter_flow/flutter_flow_util.dart';
import 'set_up_profile_widget.dart' show SetUpProfileWidget;
import 'package:flutter/material.dart';

class SetUpProfileModel extends FlutterFlowModel<SetUpProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
