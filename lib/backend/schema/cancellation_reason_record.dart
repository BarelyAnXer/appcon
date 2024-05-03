import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CancellationReasonRecord extends FirestoreRecord {
  CancellationReasonRecord._(
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

  // "reason" field.
  String? _reason;
  String get reason => _reason ?? '';
  bool hasReason() => _reason != null;

  // "deleted_by" field.
  String? _deletedBy;
  String get deletedBy => _deletedBy ?? '';
  bool hasDeletedBy() => _deletedBy != null;

  // "is_archived" field.
  bool? _isArchived;
  bool get isArchived => _isArchived ?? false;
  bool hasIsArchived() => _isArchived != null;

  // "edited_by" field.
  String? _editedBy;
  String get editedBy => _editedBy ?? '';
  bool hasEditedBy() => _editedBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _createdTime = snapshotData['created_time'] as DateTime?;
    _createdBy = snapshotData['created_by'] as String?;
    _reason = snapshotData['reason'] as String?;
    _deletedBy = snapshotData['deleted_by'] as String?;
    _isArchived = snapshotData['is_archived'] as bool?;
    _editedBy = snapshotData['edited_by'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('CancellationReason')
          : FirebaseFirestore.instance.collectionGroup('CancellationReason');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('CancellationReason').doc(id);

  static Stream<CancellationReasonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CancellationReasonRecord.fromSnapshot(s));

  static Future<CancellationReasonRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CancellationReasonRecord.fromSnapshot(s));

  static CancellationReasonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CancellationReasonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CancellationReasonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CancellationReasonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CancellationReasonRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CancellationReasonRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCancellationReasonRecordData({
  DateTime? createdTime,
  String? createdBy,
  String? reason,
  String? deletedBy,
  bool? isArchived,
  String? editedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'created_time': createdTime,
      'created_by': createdBy,
      'reason': reason,
      'deleted_by': deletedBy,
      'is_archived': isArchived,
      'edited_by': editedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class CancellationReasonRecordDocumentEquality
    implements Equality<CancellationReasonRecord> {
  const CancellationReasonRecordDocumentEquality();

  @override
  bool equals(CancellationReasonRecord? e1, CancellationReasonRecord? e2) {
    return e1?.createdTime == e2?.createdTime &&
        e1?.createdBy == e2?.createdBy &&
        e1?.reason == e2?.reason &&
        e1?.deletedBy == e2?.deletedBy &&
        e1?.isArchived == e2?.isArchived &&
        e1?.editedBy == e2?.editedBy;
  }

  @override
  int hash(CancellationReasonRecord? e) => const ListEquality().hash([
        e?.createdTime,
        e?.createdBy,
        e?.reason,
        e?.deletedBy,
        e?.isArchived,
        e?.editedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is CancellationReasonRecord;
}
