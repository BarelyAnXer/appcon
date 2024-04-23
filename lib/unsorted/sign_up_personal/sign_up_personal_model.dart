import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'sign_up_personal_widget.dart' show SignUpPersonalWidget;
import 'package:flutter/material.dart';

class SignUpPersonalModel extends FlutterFlowModel<SignUpPersonalWidget> {
  ///  Local state fields for this page.

  DateTime? birthdate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for firstNametxt widget.
  FocusNode? firstNametxtFocusNode;
  TextEditingController? firstNametxtTextController;
  String? Function(BuildContext, String?)? firstNametxtTextControllerValidator;
  String? _firstNametxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for middleNameTxt widget.
  FocusNode? middleNameTxtFocusNode;
  TextEditingController? middleNameTxtTextController;
  String? Function(BuildContext, String?)? middleNameTxtTextControllerValidator;
  String? _middleNameTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for lastNameTxt widget.
  FocusNode? lastNameTxtFocusNode;
  TextEditingController? lastNameTxtTextController;
  String? Function(BuildContext, String?)? lastNameTxtTextControllerValidator;
  String? _lastNameTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for suffixTxt widget.
  FocusNode? suffixTxtFocusNode;
  TextEditingController? suffixTxtTextController;
  String? Function(BuildContext, String?)? suffixTxtTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for chooseCivil widget.
  String? chooseCivilValue;
  FormFieldController<String>? chooseCivilValueController;
  // State field(s) for chooseSex widget.
  String? chooseSexValue;
  FormFieldController<String>? chooseSexValueController;
  // State field(s) for houseNumberTxt widget.
  FocusNode? houseNumberTxtFocusNode;
  TextEditingController? houseNumberTxtTextController;
  String? Function(BuildContext, String?)?
      houseNumberTxtTextControllerValidator;
  String? _houseNumberTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for steetTxt widget.
  FocusNode? steetTxtFocusNode;
  TextEditingController? steetTxtTextController;
  String? Function(BuildContext, String?)? steetTxtTextControllerValidator;
  String? _steetTxtTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for baranggayTxt widget.
  FocusNode? baranggayTxtFocusNode;
  TextEditingController? baranggayTxtTextController;
  String? Function(BuildContext, String?)? baranggayTxtTextControllerValidator;
  String? _baranggayTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for municapilityTxt widget.
  FocusNode? municapilityTxtFocusNode;
  TextEditingController? municapilityTxtTextController;
  String? Function(BuildContext, String?)?
      municapilityTxtTextControllerValidator;
  String? _municapilityTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for provinceTxt widget.
  FocusNode? provinceTxtFocusNode;
  TextEditingController? provinceTxtTextController;
  String? Function(BuildContext, String?)? provinceTxtTextControllerValidator;
  String? _provinceTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for zipCodeTxt widget.
  FocusNode? zipCodeTxtFocusNode;
  TextEditingController? zipCodeTxtTextController;
  String? Function(BuildContext, String?)? zipCodeTxtTextControllerValidator;
  String? _zipCodeTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for occupationTxt widget.
  FocusNode? occupationTxtFocusNode;
  TextEditingController? occupationTxtTextController;
  String? Function(BuildContext, String?)? occupationTxtTextControllerValidator;
  String? _occupationTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for nationalityTxt widget.
  FocusNode? nationalityTxtFocusNode1;
  TextEditingController? nationalityTxtTextController1;
  String? Function(BuildContext, String?)?
      nationalityTxtTextController1Validator;
  String? _nationalityTxtTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for nationalityTxt widget.
  FocusNode? nationalityTxtFocusNode2;
  TextEditingController? nationalityTxtTextController2;
  String? Function(BuildContext, String?)?
      nationalityTxtTextController2Validator;
  String? _nationalityTxtTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for chooseBloodType widget.
  String? chooseBloodTypeValue;
  FormFieldController<String>? chooseBloodTypeValueController;
  // State field(s) for contactTxt widget.
  FocusNode? contactTxtFocusNode;
  TextEditingController? contactTxtTextController;
  String? Function(BuildContext, String?)? contactTxtTextControllerValidator;
  String? _contactTxtTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    firstNametxtTextControllerValidator = _firstNametxtTextControllerValidator;
    middleNameTxtTextControllerValidator =
        _middleNameTxtTextControllerValidator;
    lastNameTxtTextControllerValidator = _lastNameTxtTextControllerValidator;
    houseNumberTxtTextControllerValidator =
        _houseNumberTxtTextControllerValidator;
    steetTxtTextControllerValidator = _steetTxtTextControllerValidator;
    baranggayTxtTextControllerValidator = _baranggayTxtTextControllerValidator;
    municapilityTxtTextControllerValidator =
        _municapilityTxtTextControllerValidator;
    provinceTxtTextControllerValidator = _provinceTxtTextControllerValidator;
    zipCodeTxtTextControllerValidator = _zipCodeTxtTextControllerValidator;
    occupationTxtTextControllerValidator =
        _occupationTxtTextControllerValidator;
    nationalityTxtTextController1Validator =
        _nationalityTxtTextController1Validator;
    nationalityTxtTextController2Validator =
        _nationalityTxtTextController2Validator;
    contactTxtTextControllerValidator = _contactTxtTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    firstNametxtFocusNode?.dispose();
    firstNametxtTextController?.dispose();

    middleNameTxtFocusNode?.dispose();
    middleNameTxtTextController?.dispose();

    lastNameTxtFocusNode?.dispose();
    lastNameTxtTextController?.dispose();

    suffixTxtFocusNode?.dispose();
    suffixTxtTextController?.dispose();

    houseNumberTxtFocusNode?.dispose();
    houseNumberTxtTextController?.dispose();

    steetTxtFocusNode?.dispose();
    steetTxtTextController?.dispose();

    baranggayTxtFocusNode?.dispose();
    baranggayTxtTextController?.dispose();

    municapilityTxtFocusNode?.dispose();
    municapilityTxtTextController?.dispose();

    provinceTxtFocusNode?.dispose();
    provinceTxtTextController?.dispose();

    zipCodeTxtFocusNode?.dispose();
    zipCodeTxtTextController?.dispose();

    occupationTxtFocusNode?.dispose();
    occupationTxtTextController?.dispose();

    nationalityTxtFocusNode1?.dispose();
    nationalityTxtTextController1?.dispose();

    nationalityTxtFocusNode2?.dispose();
    nationalityTxtTextController2?.dispose();

    contactTxtFocusNode?.dispose();
    contactTxtTextController?.dispose();
  }
}
