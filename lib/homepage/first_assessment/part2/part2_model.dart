import '/flutter_flow/flutter_flow_util.dart';
import 'part2_widget.dart' show Part2Widget;
import 'package:flutter/material.dart';

class Part2Model extends FlutterFlowModel<Part2Widget> {
  ///  Local state fields for this page.

  List<String> questionsEnglish = [
    'padding',
    'In the past 1 year, have you travelled or lived in other countries?',
    'In the past 1 year, have you been jailed or imprisoned? ',
    'Have you taken prohibited drugs (orally, by nose, or by injection)?'
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

  List<String> remarks = ['padding', '', '', ''];
  void addToRemarks(String item) => remarks.add(item);
  void removeFromRemarks(String item) => remarks.remove(item);
  void removeAtIndexFromRemarks(int index) => remarks.removeAt(index);
  void insertAtIndexInRemarks(int index, String item) =>
      remarks.insert(index, item);
  void updateRemarksAtIndex(int index, Function(String) updateFn) =>
      remarks[index] = updateFn(remarks[index]);

  List<int> yesOrNo = [0, 0, 0, 0];
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
