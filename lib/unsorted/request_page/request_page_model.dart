import '/flutter_flow/flutter_flow_util.dart';
import 'request_page_widget.dart' show RequestPageWidget;
import 'package:flutter/material.dart';

class RequestPageModel extends FlutterFlowModel<RequestPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}