import '/flutter_flow/flutter_flow_util.dart';
import 'b_d_i_s_recap_widget.dart' show BDISRecapWidget;
import 'package:flutter/material.dart';

class BDISRecapModel extends FlutterFlowModel<BDISRecapWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
