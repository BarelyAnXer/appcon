import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

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
      if (prefs.containsKey('ff_part1')) {
        try {
          final serializedData = prefs.getString('ff_part1') ?? '{}';
          _part1 = QandAStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_part2')) {
        try {
          final serializedData = prefs.getString('ff_part2') ?? '{}';
          _part2 = QandAStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_part3')) {
        try {
          final serializedData = prefs.getString('ff_part3') ?? '{}';
          _part3 = QandAStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  QandAStruct _part1 = QandAStruct.fromSerializableMap(jsonDecode(
      '{\"question\":\"[\\\"padding\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"Hello World\\\"]\",\"remarks\":\"[\\\"padding\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\"]\",\"yes_or_no\":\"[\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\"]\"}'));
  QandAStruct get part1 => _part1;
  set part1(QandAStruct value) {
    _part1 = value;
    prefs.setString('ff_part1', value.serialize());
  }

  void updatePart1Struct(Function(QandAStruct) updateFn) {
    updateFn(_part1);
    prefs.setString('ff_part1', _part1.serialize());
  }

  QandAStruct _part2 = QandAStruct.fromSerializableMap(jsonDecode(
      '{\"question\":\"[\\\"Padding\\\",\\\"\\\",\\\"\\\",\\\"\\\"]\",\"remarks\":\"[\\\"Padding\\\",\\\"\\\",\\\"\\\",\\\"\\\"]\",\"yes_or_no\":\"[\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\"]\"}'));
  QandAStruct get part2 => _part2;
  set part2(QandAStruct value) {
    _part2 = value;
    prefs.setString('ff_part2', value.serialize());
  }

  void updatePart2Struct(Function(QandAStruct) updateFn) {
    updateFn(_part2);
    prefs.setString('ff_part2', _part2.serialize());
  }

  QandAStruct _part3 = QandAStruct.fromSerializableMap(jsonDecode(
      '{\"question\":\"[\\\"Padding\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\"]\",\"remarks\":\"[\\\"Padding\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\",\\\"\\\"]\",\"yes_or_no\":\"[\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\",\\\"0\\\"]\"}'));
  QandAStruct get part3 => _part3;
  set part3(QandAStruct value) {
    _part3 = value;
    prefs.setString('ff_part3', value.serialize());
  }

  void updatePart3Struct(Function(QandAStruct) updateFn) {
    updateFn(_part3);
    prefs.setString('ff_part3', _part3.serialize());
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
