import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'setting_donation_widget.dart' show SettingDonationWidget;
import 'package:flutter/material.dart';

class SettingDonationModel extends FlutterFlowModel<SettingDonationWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for SelectProvince widget.
  String? selectProvinceValue;
  FormFieldController<String>? selectProvinceValueController;
  // State field(s) for SelectBloodCenter widget.
  String? selectBloodCenterValue;
  FormFieldController<String>? selectBloodCenterValueController;
  DateTime? datePicked;
  // Stores action output result for [Custom Action - getBloodCenter] action in Button widget.
  String? temp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
