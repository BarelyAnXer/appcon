import '/flutter_flow/flutter_flow_util.dart';
import 'part3_widget.dart' show Part3Widget;
import 'package:flutter/material.dart';

class Part3Model extends FlutterFlowModel<Part3Widget> {
  ///  Local state fields for this page.

  List<String> questionsEnglish = [
    'padding',
    'Are you currently pregnant? → For Gender Woman only',
    'Do you feel well and healthy today?',
    'Have you within the last 12 hours had an alcohol intake? ',
    'Do you intent to drive a heavy transport vehicle or operate a heavy machine within the next twelve (12) hours?',
    'Within the last 12 hours did you consume alcohol?',
    'Do you intent to ride or pilot an airplane within 24 hours?',
    'In the past 72 hours have you had tooth extraction',
    'In the last 3 days have you taken aspirin?',
    'In the past 4 Weeks have you taken any medications or vaccinations?',
    'In the past 3 Months have you had chicken pox or cold sores?',
    'In the past 3 Months have you donated whole blood, platelets, or plasma?',
    'For the past 6 months, have you been under the doctor’s care for a certain disease or illness? Please provide details about the certain disease. '
  ];
  void addToQuestionsEnglish(String item) => questionsEnglish.add(item);
  void removeFromQuestionsEnglish(String item) => questionsEnglish.remove(item);
  void removeAtIndexFromQuestionsEnglish(int index) =>
      questionsEnglish.removeAt(index);
  void insertAtIndexInQuestionsEnglish(int index, String item) =>
      questionsEnglish.insert(index, item);
  void updateQuestionsEnglishAtIndex(int index, Function(String) updateFn) =>
      questionsEnglish[index] = updateFn(questionsEnglish[index]);

  int? counter = 1;

  String language = 'english';

  List<String> questionsTagalog = [
    'Hello World 1 ',
    'Hello World 2',
    'Hello World 3'
  ];
  void addToQuestionsTagalog(String item) => questionsTagalog.add(item);
  void removeFromQuestionsTagalog(String item) => questionsTagalog.remove(item);
  void removeAtIndexFromQuestionsTagalog(int index) =>
      questionsTagalog.removeAt(index);
  void insertAtIndexInQuestionsTagalog(int index, String item) =>
      questionsTagalog.insert(index, item);
  void updateQuestionsTagalogAtIndex(int index, Function(String) updateFn) =>
      questionsTagalog[index] = updateFn(questionsTagalog[index]);

  List<String> remarks = [
    'padding',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];
  void addToRemarks(String item) => remarks.add(item);
  void removeFromRemarks(String item) => remarks.remove(item);
  void removeAtIndexFromRemarks(int index) => remarks.removeAt(index);
  void insertAtIndexInRemarks(int index, String item) =>
      remarks.insert(index, item);
  void updateRemarksAtIndex(int index, Function(String) updateFn) =>
      remarks[index] = updateFn(remarks[index]);

  List<int> yesOrNo = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  void addToYesOrNo(int item) => yesOrNo.add(item);
  void removeFromYesOrNo(int item) => yesOrNo.remove(item);
  void removeAtIndexFromYesOrNo(int index) => yesOrNo.removeAt(index);
  void insertAtIndexInYesOrNo(int index, int item) =>
      yesOrNo.insert(index, item);
  void updateYesOrNoAtIndex(int index, Function(int) updateFn) =>
      yesOrNo[index] = updateFn(yesOrNo[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
