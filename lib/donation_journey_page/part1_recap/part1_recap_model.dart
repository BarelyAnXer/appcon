import '/flutter_flow/flutter_flow_util.dart';
import 'part1_recap_widget.dart' show Part1RecapWidget;
import 'package:flutter/material.dart';

class Part1RecapModel extends FlutterFlowModel<Part1RecapWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
