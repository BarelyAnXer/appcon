// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class QandAStruct extends FFFirebaseStruct {
  QandAStruct({
    List<String>? question,
    List<String>? remarks,
    List<int>? yesOrNo,
    int? counter,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _remarks = remarks,
        _yesOrNo = yesOrNo,
        _counter = counter,
        super(firestoreUtilData);

  // "question" field.
  List<String>? _question;
  List<String> get question => _question ?? const [];
  set question(List<String>? val) => _question = val;
  void updateQuestion(Function(List<String>) updateFn) =>
      updateFn(_question ??= []);
  bool hasQuestion() => _question != null;

  // "remarks" field.
  List<String>? _remarks;
  List<String> get remarks => _remarks ?? const [];
  set remarks(List<String>? val) => _remarks = val;
  void updateRemarks(Function(List<String>) updateFn) =>
      updateFn(_remarks ??= []);
  bool hasRemarks() => _remarks != null;

  // "yes_or_no" field.
  List<int>? _yesOrNo;
  List<int> get yesOrNo => _yesOrNo ?? const [];
  set yesOrNo(List<int>? val) => _yesOrNo = val;
  void updateYesOrNo(Function(List<int>) updateFn) => updateFn(_yesOrNo ??= []);
  bool hasYesOrNo() => _yesOrNo != null;

  // "counter" field.
  int? _counter;
  int get counter => _counter ?? 1;
  set counter(int? val) => _counter = val;
  void incrementCounter(int amount) => _counter = counter + amount;
  bool hasCounter() => _counter != null;

  static QandAStruct fromMap(Map<String, dynamic> data) => QandAStruct(
        question: getDataList(data['question']),
        remarks: getDataList(data['remarks']),
        yesOrNo: getDataList(data['yes_or_no']),
        counter: castToType<int>(data['counter']),
      );

  static QandAStruct? maybeFromMap(dynamic data) =>
      data is Map ? QandAStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'remarks': _remarks,
        'yes_or_no': _yesOrNo,
        'counter': _counter,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
          true,
        ),
        'remarks': serializeParam(
          _remarks,
          ParamType.String,
          true,
        ),
        'yes_or_no': serializeParam(
          _yesOrNo,
          ParamType.int,
          true,
        ),
        'counter': serializeParam(
          _counter,
          ParamType.int,
        ),
      }.withoutNulls;

  static QandAStruct fromSerializableMap(Map<String, dynamic> data) =>
      QandAStruct(
        question: deserializeParam<String>(
          data['question'],
          ParamType.String,
          true,
        ),
        remarks: deserializeParam<String>(
          data['remarks'],
          ParamType.String,
          true,
        ),
        yesOrNo: deserializeParam<int>(
          data['yes_or_no'],
          ParamType.int,
          true,
        ),
        counter: deserializeParam(
          data['counter'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'QandAStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is QandAStruct &&
        listEquality.equals(question, other.question) &&
        listEquality.equals(remarks, other.remarks) &&
        listEquality.equals(yesOrNo, other.yesOrNo) &&
        counter == other.counter;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([question, remarks, yesOrNo, counter]);
}

QandAStruct createQandAStruct({
  int? counter,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QandAStruct(
      counter: counter,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QandAStruct? updateQandAStruct(
  QandAStruct? qandA, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    qandA
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQandAStructData(
  Map<String, dynamic> firestoreData,
  QandAStruct? qandA,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (qandA == null) {
    return;
  }
  if (qandA.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && qandA.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final qandAData = getQandAFirestoreData(qandA, forFieldValue);
  final nestedData = qandAData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = qandA.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQandAFirestoreData(
  QandAStruct? qandA, [
  bool forFieldValue = false,
]) {
  if (qandA == null) {
    return {};
  }
  final firestoreData = mapToFirestore(qandA.toMap());

  // Add any Firestore field values
  qandA.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQandAListFirestoreData(
  List<QandAStruct>? qandAs,
) =>
    qandAs?.map((e) => getQandAFirestoreData(e, true)).toList() ?? [];
