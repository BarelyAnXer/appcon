import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'request_schedule_widget.dart' show RequestScheduleWidget;
import 'package:flutter/material.dart';

class RequestScheduleModel extends FlutterFlowModel<RequestScheduleWidget> {
  ///  Local state fields for this component.

  String? selectedProvince;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for provinceDropDown widget.
  String? provinceDropDownValue;
  FormFieldController<String>? provinceDropDownValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Custom Action - getBloodCenter] action in Button widget.
  String? temp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
