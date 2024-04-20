import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_personal_acc_widget.dart' show SignUpPersonalAccWidget;
import 'package:flutter/material.dart';

class SignUpPersonalAccModel extends FlutterFlowModel<SignUpPersonalAccWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for FirstNameTxt widget.
  FocusNode? firstNameTxtFocusNode;
  TextEditingController? firstNameTxtTextController;
  String? Function(BuildContext, String?)? firstNameTxtTextControllerValidator;
  // State field(s) for MiddleNameTxt widget.
  FocusNode? middleNameTxtFocusNode;
  TextEditingController? middleNameTxtTextController;
  String? Function(BuildContext, String?)? middleNameTxtTextControllerValidator;
  // State field(s) for LastNameTxt widget.
  FocusNode? lastNameTxtFocusNode;
  TextEditingController? lastNameTxtTextController;
  String? Function(BuildContext, String?)? lastNameTxtTextControllerValidator;
  // State field(s) for SuffixTxt widget.
  FocusNode? suffixTxtFocusNode;
  TextEditingController? suffixTxtTextController;
  String? Function(BuildContext, String?)? suffixTxtTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for GenderBtn widget.
  FormFieldController<String>? genderBtnValueController;
  // State field(s) for CivilDropDown widget.
  String? civilDropDownValue;
  FormFieldController<String>? civilDropDownValueController;
  // State field(s) for ProvinceTxt widget.
  FocusNode? provinceTxtFocusNode;
  TextEditingController? provinceTxtTextController;
  String? Function(BuildContext, String?)? provinceTxtTextControllerValidator;
  // State field(s) for CityTxt widget.
  FocusNode? cityTxtFocusNode;
  TextEditingController? cityTxtTextController;
  String? Function(BuildContext, String?)? cityTxtTextControllerValidator;
  // State field(s) for BarangayTxt widget.
  FocusNode? barangayTxtFocusNode;
  TextEditingController? barangayTxtTextController;
  String? Function(BuildContext, String?)? barangayTxtTextControllerValidator;
  // State field(s) for FullAddress widget.
  FocusNode? fullAddressFocusNode;
  TextEditingController? fullAddressTextController;
  String? Function(BuildContext, String?)? fullAddressTextControllerValidator;
  // State field(s) for OccupationTxt widget.
  FocusNode? occupationTxtFocusNode;
  TextEditingController? occupationTxtTextController;
  String? Function(BuildContext, String?)? occupationTxtTextControllerValidator;
  // State field(s) for ReligionTxt widget.
  FocusNode? religionTxtFocusNode;
  TextEditingController? religionTxtTextController;
  String? Function(BuildContext, String?)? religionTxtTextControllerValidator;
  // State field(s) for ContactTxt widget.
  FocusNode? contactTxtFocusNode;
  TextEditingController? contactTxtTextController;
  String? Function(BuildContext, String?)? contactTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNameTxtFocusNode?.dispose();
    firstNameTxtTextController?.dispose();

    middleNameTxtFocusNode?.dispose();
    middleNameTxtTextController?.dispose();

    lastNameTxtFocusNode?.dispose();
    lastNameTxtTextController?.dispose();

    suffixTxtFocusNode?.dispose();
    suffixTxtTextController?.dispose();

    provinceTxtFocusNode?.dispose();
    provinceTxtTextController?.dispose();

    cityTxtFocusNode?.dispose();
    cityTxtTextController?.dispose();

    barangayTxtFocusNode?.dispose();
    barangayTxtTextController?.dispose();

    fullAddressFocusNode?.dispose();
    fullAddressTextController?.dispose();

    occupationTxtFocusNode?.dispose();
    occupationTxtTextController?.dispose();

    religionTxtFocusNode?.dispose();
    religionTxtTextController?.dispose();

    contactTxtFocusNode?.dispose();
    contactTxtTextController?.dispose();
  }

  /// Additional helper methods.
  String? get genderBtnValue => genderBtnValueController?.value;
}
