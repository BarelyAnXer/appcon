import '/flutter_flow/flutter_flow_util.dart';
import 'f_a_qs_widget.dart' show FAQsWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FAQsModel extends FlutterFlowModel<FAQsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Question1 widget.
  late ExpandableController question1ExpandableController1;

  // State field(s) for Question1 widget.
  late ExpandableController question1ExpandableController2;

  // State field(s) for Question1 widget.
  late ExpandableController question1ExpandableController3;

  // State field(s) for Question1 widget.
  late ExpandableController question1ExpandableController4;

  // State field(s) for Question1 widget.
  late ExpandableController question1ExpandableController5;

  // State field(s) for Question1 widget.
  late ExpandableController question1ExpandableController6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    question1ExpandableController1.dispose();
    question1ExpandableController2.dispose();
    question1ExpandableController3.dispose();
    question1ExpandableController4.dispose();
    question1ExpandableController5.dispose();
    question1ExpandableController6.dispose();
  }
}
