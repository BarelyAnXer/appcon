import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BloodTypeRecord extends FirestoreRecord {
  BloodTypeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "bloodtype" field.
  String? _bloodtype;
  String get bloodtype => _bloodtype ?? '';
  bool hasBloodtype() => _bloodtype != null;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _createdBy = snapshotData['created_by'] as String?;
    _bloodtype = snapshotData['bloodtype'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BloodType');

  static Stream<BloodTypeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BloodTypeRecord.fromSnapshot(s));

  static Future<BloodTypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BloodTypeRecord.fromSnapshot(s));

  static BloodTypeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BloodTypeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BloodTypeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BloodTypeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BloodTypeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BloodTypeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBloodTypeRecordData({
  DateTime? createdTime,
  String? createdBy,
  String? bloodtype,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'created_by': createdBy,
      'bloodtype': bloodtype,
    }.withoutNulls,
  );

  return firestoreData;
}

class BloodTypeRecordDocumentEquality implements Equality<BloodTypeRecord> {
  const BloodTypeRecordDocumentEquality();

  @override
  bool equals(BloodTypeRecord? e1, BloodTypeRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.createdBy == e2?.createdBy &&
        e1?.bloodtype == e2?.bloodtype;
  }

  @override
  int hash(BloodTypeRecord? e) =>
      const ListEquality().hash([e?.createdTime, e?.createdBy, e?.bloodtype]);

  @override
  bool isValidKey(Object? o) => o is BloodTypeRecord;
}
