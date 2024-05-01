import '/flutter_flow/flutter_flow_util.dart';
import 'question_health_assessment_widget.dart'
    show QuestionHealthAssessmentWidget;
import 'package:flutter/material.dart';

class QuestionHealthAssessmentModel
    extends FlutterFlowModel<QuestionHealthAssessmentWidget> {
  ///  Local state fields for this page.

  List<String> questionsEnglish = [
    'Padding Temporary',
    'Have you had Permanent Tattoo applied?',
    'Have you ever had any sexually transmitted disease like Syphilis, Gonorrhea, and HIV/AIDS? ',
    'From 1980 to present, did you spend time in the United Kingdom or Europe? (CJD, vCJD, Madcow Disease)?',
    'Have you ever had Malaria in the past? ',
    'Have you ever been refused as a blood donor or told not to donate blood?',
    'Have you ever had Cancer, Blood Disease, or Bleeding Disorder (Haemophilia)',
    'Have you ever had Heart Disease or Surgery, Rheumatic Fever or Chest Pains?',
    'Have you ever had a Lung Disease or Tuberculosis.',
    'Have you ever had a Asthma?',
    'Have you ever had Kidney Disease, Thyroid Disease, Diabetes, and Epilepsy?',
    'Have you ever had Surgical Operations?',
    'Have you ever had Jaundice or Hepatitis?',
    'Have you received blood, blood products, and/or had tissue or organ transplant?'
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

  List<int> yesOrNo = [
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
  ];
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
