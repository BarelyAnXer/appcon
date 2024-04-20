import '/flutter_flow/flutter_flow_util.dart';
import 'edit_address_widget.dart' show EditAddressWidget;
import 'package:flutter/material.dart';

class EditAddressModel extends FlutterFlowModel<EditAddressWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for houseNumberTxt widget.
  FocusNode? houseNumberTxtFocusNode;
  TextEditingController? houseNumberTxtTextController;
  String? Function(BuildContext, String?)?
      houseNumberTxtTextControllerValidator;
  // State field(s) for steetTxt widget.
  FocusNode? steetTxtFocusNode;
  TextEditingController? steetTxtTextController;
  String? Function(BuildContext, String?)? steetTxtTextControllerValidator;
  // State field(s) for baranggayTxt widget.
  FocusNode? baranggayTxtFocusNode;
  TextEditingController? baranggayTxtTextController;
  String? Function(BuildContext, String?)? baranggayTxtTextControllerValidator;
  // State field(s) for municapilityTxt widget.
  FocusNode? municapilityTxtFocusNode;
  TextEditingController? municapilityTxtTextController;
  String? Function(BuildContext, String?)?
      municapilityTxtTextControllerValidator;
  // State field(s) for provinceTxt widget.
  FocusNode? provinceTxtFocusNode;
  TextEditingController? provinceTxtTextController;
  String? Function(BuildContext, String?)? provinceTxtTextControllerValidator;
  // State field(s) for zipCodeTxt widget.
  FocusNode? zipCodeTxtFocusNode;
  TextEditingController? zipCodeTxtTextController;
  String? Function(BuildContext, String?)? zipCodeTxtTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
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
  }
}
