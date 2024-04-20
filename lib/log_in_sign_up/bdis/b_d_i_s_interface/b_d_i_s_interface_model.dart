import '/flutter_flow/flutter_flow_util.dart';
import 'b_d_i_s_interface_widget.dart' show BDISInterfaceWidget;
import 'package:flutter/material.dart';

class BDISInterfaceModel extends FlutterFlowModel<BDISInterfaceWidget> {
  ///  Local state fields for this page.

  List<String> questionsTagalog = [
    'Padding Temporary',
    'Maayos ba ang iyong kalusugan at pakiramdam ngayong araw na ito?',
    'Nagkaroon ba ng pagkakataon na ikaw ay natanggihan o nasabing hindi maaring magbigay ng dugo? Kung OO sa anong dahilan?',
    'Nagkaroon ba ng pagkakataon na ikaw ay natanggihan o nasabing hindi maaring magbigay ng dugo? Kung OO sa anong dahilan?',
    'Sa loob ng 24 oras nakainom ka ba ng alak, beer, o aumang inuming may alkohol?',
    'Sa susunod na 12 oras, magmamaneho ka ba ng sasakyan o magpapaandar ng makinarya?',
    'Sa loob ng 24 na oras, sasakay ka ba sa eroplano?',
    'Sa nakalipas na taon, ikaw ba ay nagpabunot ng ngipin? Kung OO kailan?',
    'Sa loob ng 3 araw, nakainom ka ba ng aspirin o pain reliever? Kung OO ano at kailan?',
    'Sa nakalipas na 4 na linggo, nakainom ka ba ng gamot/nabakunahan? Kung OO, ano at kailan?',
    'Naghandog ka ba ng dugo, platelets, o plasma? Kung OO, kailan ang huling handog?',
    'Sa nakalipas na 6 na buwan, nasa pangangalaga ka ba ng doktor dahil sa isang uri ng pagkakasakit? ',
    'Nagkaroon ka ba ng mga sumusunod na karamdaman: Kanser, Sakit sa puso o pananakit sa dibdib, sakit sa baga, tuberculosis o hika, malaria, sakit sa bato, o iba pang sakit na di nabanggit sa una o naoperahan? Kung OO, ano itong karamdaman?',
    'Nakapunta ka ba sa lugar na laganap ang malarya, katulad ng Palawan at Mindoro?',
    'May pagkakataon ba na ikaw ay nanilaw, nagkahepatitis, nakihalubilo sa may sakit sa atay?',
    'Mula 1980 hanggnag ngayon, nagbiyahe ka ba sa United Kingdom or Europa? (CJD, vCJD, madcow disease) kung OO, kailan at gaano katagal?',
    'a kasulukuyan., ikaw ba ay may karamdaman, sipon, lagnat, pangangati (ALLERGY) o nakagagawang sakit?',
    'Sa nakalipas na 1 taon, nanirahan ka ba sa ibang lugar or nagbiyahe sa ibang bansa? Kung OO saan at kailan?',
    'Sa nakalipas na 1 taon, nakulong o napiit ka ba?',
    'Nakagamit ka ba ng ipinagbabawal na gamot?',
    'Hello WNasalinan ka ba ng dugo, naoperahan at nabigyan ng bahagi ng katawan ng ibang tao?orld'
  ];
  void addToQuestionsTagalog(String item) => questionsTagalog.add(item);
  void removeFromQuestionsTagalog(String item) => questionsTagalog.remove(item);
  void removeAtIndexFromQuestionsTagalog(int index) =>
      questionsTagalog.removeAt(index);
  void insertAtIndexInQuestionsTagalog(int index, String item) =>
      questionsTagalog.insert(index, item);
  void updateQuestionsTagalogAtIndex(int index, Function(String) updateFn) =>
      questionsTagalog[index] = updateFn(questionsTagalog[index]);

  int? counter = 1;

  String language = 'english';

  List<String> questionEnglish = [
    'Padding Temporary',
    'Is your health and well-being okay today?',
    'Have there been occasions when you were rejected or told that you cannot donate blood? If YES, for what reason?',
    'Within the past 24 hours, have you consumed alcohol, beer, or any other alcoholic beverages?',
    'In the next 12 hours, will you be driving a vehicle or operating machinery?',
    'Within the next 24 hours, will you be boarding an airplane?',
    'Did you have your tooth pulled out in the past year? If YES, when?',
    'Within the past 3 days, have you taken aspirin or any pain reliever? If YES, what and when?',
    'In the past 4 weeks, have you taken any medication/been vaccinated? If YES, what and when?In the past 3 months, have you had chickenpox or mouth sores?',
    'In the past 3 months, have you had chickenpox or mouth sores?',
    'Have you donated blood, platelets, or plasma? If YES, when was your last donation?',
    'Have you been under the care of a doctor for any type of illness in the past 6 months?',
    'Have you had any of the following illnesses: Cancer, Heart disease or chest pain, Lung disease, Tuberculosis or asthma, Malaria, Kidney disease, or any other illnesses not mentioned previously or undergone surgery for? If YES, what are these illnesses?',
    'Have you been to places where malaria is prevalent, such as Palawan and Mindoro?',
    'Have you ever experienced jaundice, hepatitis, or been in contact with someone with liver disease?',
    'From 1980 until now, have you traveled to the United Kingdom or Europe? If YES, when and for how long?',
    'Currently, do you have any illness, colds, fever, itching, or any other discomfort?',
    'In the past year, have you lived elsewhere or traveled to other countries? If YES, where and when?',
    'In the past year, were you imprisoned or detained?',
    'Have you used illegal drugs?',
    'Have you received blood transfusions, undergone surgery, or received parts of another person\'s body?'
  ];
  void addToQuestionEnglish(String item) => questionEnglish.add(item);
  void removeFromQuestionEnglish(String item) => questionEnglish.remove(item);
  void removeAtIndexFromQuestionEnglish(int index) =>
      questionEnglish.removeAt(index);
  void insertAtIndexInQuestionEnglish(int index, String item) =>
      questionEnglish.insert(index, item);
  void updateQuestionEnglishAtIndex(int index, Function(String) updateFn) =>
      questionEnglish[index] = updateFn(questionEnglish[index]);

  List<String> answers = [
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
  void addToAnswers(String item) => answers.add(item);
  void removeFromAnswers(String item) => answers.remove(item);
  void removeAtIndexFromAnswers(int index) => answers.removeAt(index);
  void insertAtIndexInAnswers(int index, String item) =>
      answers.insert(index, item);
  void updateAnswersAtIndex(int index, Function(String) updateFn) =>
      answers[index] = updateFn(answers[index]);

  List<int> answerBoolean = [
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
  void addToAnswerBoolean(int item) => answerBoolean.add(item);
  void removeFromAnswerBoolean(int item) => answerBoolean.remove(item);
  void removeAtIndexFromAnswerBoolean(int index) =>
      answerBoolean.removeAt(index);
  void insertAtIndexInAnswerBoolean(int index, int item) =>
      answerBoolean.insert(index, item);
  void updateAnswerBooleanAtIndex(int index, Function(int) updateFn) =>
      answerBoolean[index] = updateFn(answerBoolean[index]);

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
