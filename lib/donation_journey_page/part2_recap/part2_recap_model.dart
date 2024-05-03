import '/flutter_flow/flutter_flow_util.dart';
import 'part2_recap_widget.dart' show Part2RecapWidget;
import 'package:flutter/material.dart';

class Part2RecapModel extends FlutterFlowModel<Part2RecapWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
