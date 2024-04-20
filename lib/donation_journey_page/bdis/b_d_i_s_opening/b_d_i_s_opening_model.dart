import '/flutter_flow/flutter_flow_util.dart';
import 'b_d_i_s_opening_widget.dart' show BDISOpeningWidget;
import 'package:flutter/material.dart';

class BDISOpeningModel extends FlutterFlowModel<BDISOpeningWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
