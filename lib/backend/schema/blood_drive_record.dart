import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class BloodDriveRecord extends FirestoreRecord {
  BloodDriveRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "bloodcenter" field.
  String? _bloodcenter;
  String get bloodcenter => _bloodcenter ?? '';
  bool hasBloodcenter() => _bloodcenter != null;

  // "blooddrive_barangay" field.
  String? _blooddriveBarangay;
  String get blooddriveBarangay => _blooddriveBarangay ?? '';
  bool hasBlooddriveBarangay() => _blooddriveBarangay != null;

  // "blooddrive_province" field.
  String? _blooddriveProvince;
  String get blooddriveProvince => _blooddriveProvince ?? '';
  bool hasBlooddriveProvince() => _blooddriveProvince != null;

  // "blooddrive_streetestablishment" field.
  String? _blooddriveStreetestablishment;
  String get blooddriveStreetestablishment =>
      _blooddriveStreetestablishment ?? '';
  bool hasBlooddriveStreetestablishment() =>
      _blooddriveStreetestablishment != null;

  // "blooddrive_townmunicipality" field.
  String? _blooddriveTownmunicipality;
  String get blooddriveTownmunicipality => _blooddriveTownmunicipality ?? '';
  bool hasBlooddriveTownmunicipality() => _blooddriveTownmunicipality != null;

  // "blooddrive_zip" field.
  String? _blooddriveZip;
  String get blooddriveZip => _blooddriveZip ?? '';
  bool hasBlooddriveZip() => _blooddriveZip != null;

  // "blooddrivetitle" field.
  String? _blooddrivetitle;
  String get blooddrivetitle => _blooddrivetitle ?? '';
  bool hasBlooddrivetitle() => _blooddrivetitle != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "donationdrive_date" field.
  DateTime? _donationdriveDate;
  DateTime? get donationdriveDate => _donationdriveDate;
  bool hasDonationdriveDate() => _donationdriveDate != null;

  // "edited_by" field.
  String? _editedBy;
  String get editedBy => _editedBy ?? '';
  bool hasEditedBy() => _editedBy != null;

  // "is_archived" field.
  bool? _isArchived;
  bool get isArchived => _isArchived ?? false;
  bool hasIsArchived() => _isArchived != null;

  // "archived_by" field.
  String? _archivedBy;
  String get archivedBy => _archivedBy ?? '';
  bool hasArchivedBy() => _archivedBy != null;

  void _initializeFields() {
    _bloodcenter = snapshotData['bloodcenter'] as String?;
    _blooddriveBarangay = snapshotData['blooddrive_barangay'] as String?;
    _blooddriveProvince = snapshotData['blooddrive_province'] as String?;
    _blooddriveStreetestablishment =
        snapshotData['blooddrive_streetestablishment'] as String?;
    _blooddriveTownmunicipality =
        snapshotData['blooddrive_townmunicipality'] as String?;
    _blooddriveZip = snapshotData['blooddrive_zip'] as String?;
    _blooddrivetitle = snapshotData['blooddrivetitle'] as String?;
    _createdBy = snapshotData['created_by'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _donationdriveDate = snapshotData['donationdrive_date'] as DateTime?;
    _editedBy = snapshotData['edited_by'] as String?;
    _isArchived = snapshotData['is_archived'] as bool?;
    _archivedBy = snapshotData['archived_by'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BloodDrive');

  static Stream<BloodDriveRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BloodDriveRecord.fromSnapshot(s));

  static Future<BloodDriveRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BloodDriveRecord.fromSnapshot(s));

  static BloodDriveRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BloodDriveRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BloodDriveRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BloodDriveRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BloodDriveRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BloodDriveRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBloodDriveRecordData({
  String? bloodcenter,
  String? blooddriveBarangay,
  String? blooddriveProvince,
  String? blooddriveStreetestablishment,
  String? blooddriveTownmunicipality,
  String? blooddriveZip,
  String? blooddrivetitle,
  String? createdBy,
  DateTime? createdTime,
  DateTime? donationdriveDate,
  String? editedBy,
  bool? isArchived,
  String? archivedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'bloodcenter': bloodcenter,
      'blooddrive_barangay': blooddriveBarangay,
      'blooddrive_province': blooddriveProvince,
      'blooddrive_streetestablishment': blooddriveStreetestablishment,
      'blooddrive_townmunicipality': blooddriveTownmunicipality,
      'blooddrive_zip': blooddriveZip,
      'blooddrivetitle': blooddrivetitle,
      'created_by': createdBy,
      'created_time': createdTime,
      'donationdrive_date': donationdriveDate,
      'edited_by': editedBy,
      'is_archived': isArchived,
      'archived_by': archivedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class BloodDriveRecordDocumentEquality implements Equality<BloodDriveRecord> {
  const BloodDriveRecordDocumentEquality();

  @override
  bool equals(BloodDriveRecord? e1, BloodDriveRecord? e2) {
    return e1?.bloodcenter == e2?.bloodcenter &&
        e1?.blooddriveBarangay == e2?.blooddriveBarangay &&
        e1?.blooddriveProvince == e2?.blooddriveProvince &&
        e1?.blooddriveStreetestablishment ==
            e2?.blooddriveStreetestablishment &&
        e1?.blooddriveTownmunicipality == e2?.blooddriveTownmunicipality &&
        e1?.blooddriveZip == e2?.blooddriveZip &&
        e1?.blooddrivetitle == e2?.blooddrivetitle &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdTime == e2?.createdTime &&
        e1?.donationdriveDate == e2?.donationdriveDate &&
        e1?.editedBy == e2?.editedBy &&
        e1?.isArchived == e2?.isArchived &&
        e1?.archivedBy == e2?.archivedBy;
  }

  @override
  int hash(BloodDriveRecord? e) => const ListEquality().hash([
        e?.bloodcenter,
        e?.blooddriveBarangay,
        e?.blooddriveProvince,
        e?.blooddriveStreetestablishment,
        e?.blooddriveTownmunicipality,
        e?.blooddriveZip,
        e?.blooddrivetitle,
        e?.createdBy,
        e?.createdTime,
        e?.donationdriveDate,
        e?.editedBy,
        e?.isArchived,
        e?.archivedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is BloodDriveRecord;
}
