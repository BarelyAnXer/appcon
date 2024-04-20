import '/flutter_flow/flutter_flow_util.dart';
import 'donation_journey_page_widget.dart' show DonationJourneyPageWidget;
import 'package:flutter/material.dart';

class DonationJourneyPageModel
    extends FlutterFlowModel<DonationJourneyPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
