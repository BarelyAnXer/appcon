import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BloodInventoryRecord extends FirestoreRecord {
  BloodInventoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bloodtype" field.
  String? _bloodtype;
  String get bloodtype => _bloodtype ?? '';
  bool hasBloodtype() => _bloodtype != null;

  void _initializeFields() {
    _bloodtype = snapshotData['bloodtype'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BloodInventory');

  static Stream<BloodInventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BloodInventoryRecord.fromSnapshot(s));

  static Future<BloodInventoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BloodInventoryRecord.fromSnapshot(s));

  static BloodInventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BloodInventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BloodInventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BloodInventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BloodInventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BloodInventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBloodInventoryRecordData({
  String? bloodtype,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bloodtype': bloodtype,
    }.withoutNulls,
  );

  return firestoreData;
}

class BloodInventoryRecordDocumentEquality
    implements Equality<BloodInventoryRecord> {
  const BloodInventoryRecordDocumentEquality();

  @override
  bool equals(BloodInventoryRecord? e1, BloodInventoryRecord? e2) {
    return e1?.bloodtype == e2?.bloodtype;
  }

  @override
  int hash(BloodInventoryRecord? e) =>
      const ListEquality().hash([e?.bloodtype]);

  @override
  bool isValidKey(Object? o) => o is BloodInventoryRecord;
}
