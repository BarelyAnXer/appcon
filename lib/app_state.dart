import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _answerHealthAssessment =
          prefs.getStringList('ff_answerHealthAssessment')?.map((x) {
                try {
                  return jsonDecode(x);
                } catch (e) {
                  print("Can't decode persisted json. Error: $e.");
                  return {};
                }
              }).toList() ??
              _answerHealthAssessment;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<dynamic> _answerHealthAssessment = [
    jsonDecode('{\"key\":\"value1\"}'),
    jsonDecode('{\"key\":\"value2\"}')
  ];
  List<dynamic> get answerHealthAssessment => _answerHealthAssessment;
  set answerHealthAssessment(List<dynamic> value) {
    _answerHealthAssessment = value;
    prefs.setStringList(
        'ff_answerHealthAssessment', value.map((x) => jsonEncode(x)).toList());
  }

  void addToAnswerHealthAssessment(dynamic value) {
    _answerHealthAssessment.add(value);
    prefs.setStringList('ff_answerHealthAssessment',
        _answerHealthAssessment.map((x) => jsonEncode(x)).toList());
  }

  void removeFromAnswerHealthAssessment(dynamic value) {
    _answerHealthAssessment.remove(value);
    prefs.setStringList('ff_answerHealthAssessment',
        _answerHealthAssessment.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromAnswerHealthAssessment(int index) {
    _answerHealthAssessment.removeAt(index);
    prefs.setStringList('ff_answerHealthAssessment',
        _answerHealthAssessment.map((x) => jsonEncode(x)).toList());
  }

  void updateAnswerHealthAssessmentAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _answerHealthAssessment[index] = updateFn(_answerHealthAssessment[index]);
    prefs.setStringList('ff_answerHealthAssessment',
        _answerHealthAssessment.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInAnswerHealthAssessment(int index, dynamic value) {
    _answerHealthAssessment.insert(index, value);
    prefs.setStringList('ff_answerHealthAssessment',
        _answerHealthAssessment.map((x) => jsonEncode(x)).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
