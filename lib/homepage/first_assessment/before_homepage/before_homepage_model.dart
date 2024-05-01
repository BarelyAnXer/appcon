import '/flutter_flow/flutter_flow_util.dart';
import 'before_homepage_widget.dart' show BeforeHomepageWidget;
import 'package:flutter/material.dart';

class BeforeHomepageModel extends FlutterFlowModel<BeforeHomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
