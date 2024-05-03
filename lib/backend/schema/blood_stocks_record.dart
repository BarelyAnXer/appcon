import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BloodStocksRecord extends FirestoreRecord {
  BloodStocksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "bloodtype" field.
  String? _bloodtype;
  String get bloodtype => _bloodtype ?? '';
  bool hasBloodtype() => _bloodtype != null;

  // "fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  bool hasFullname() => _fullname != null;

  // "bloodexpiry" field.
  DateTime? _bloodexpiry;
  DateTime? get bloodexpiry => _bloodexpiry;
  bool hasBloodexpiry() => _bloodexpiry != null;

  // "bloodcenter" field.
  String? _bloodcenter;
  String get bloodcenter => _bloodcenter ?? '';
  bool hasBloodcenter() => _bloodcenter != null;

  // "cancellationreason" field.
  String? _cancellationreason;
  String get cancellationreason => _cancellationreason ?? '';
  bool hasCancellationreason() => _cancellationreason != null;

  // "donationtype" field.
  String? _donationtype;
  String get donationtype => _donationtype ?? '';
  bool hasDonationtype() => _donationtype != null;

  // "appointmentdate" field.
  DateTime? _appointmentdate;
  DateTime? get appointmentdate => _appointmentdate;
  bool hasAppointmentdate() => _appointmentdate != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "donationconfirmed_by" field.
  String? _donationconfirmedBy;
  String get donationconfirmedBy => _donationconfirmedBy ?? '';
  bool hasDonationconfirmedBy() => _donationconfirmedBy != null;

  // "testconfirmed_by" field.
  String? _testconfirmedBy;
  String get testconfirmedBy => _testconfirmedBy ?? '';
  bool hasTestconfirmedBy() => _testconfirmedBy != null;

  // "rejected_by" field.
  String? _rejectedBy;
  String get rejectedBy => _rejectedBy ?? '';
  bool hasRejectedBy() => _rejectedBy != null;

  // "cancelled_by" field.
  String? _cancelledBy;
  String get cancelledBy => _cancelledBy ?? '';
  bool hasCancelledBy() => _cancelledBy != null;

  // "donation_date" field.
  DateTime? _donationDate;
  DateTime? get donationDate => _donationDate;
  bool hasDonationDate() => _donationDate != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "bdis_status" field.
  String? _bdisStatus;
  String get bdisStatus => _bdisStatus ?? '';
  bool hasBdisStatus() => _bdisStatus != null;

  // "bloodcenter_userid" field.
  DocumentReference? _bloodcenterUserid;
  DocumentReference? get bloodcenterUserid => _bloodcenterUserid;
  bool hasBloodcenterUserid() => _bloodcenterUserid != null;

  // "blooddonorid" field.
  DocumentReference? _blooddonorid;
  DocumentReference? get blooddonorid => _blooddonorid;
  bool hasBlooddonorid() => _blooddonorid != null;

  // "has_part2_answered" field.
  bool? _hasPart2Answered;
  bool get hasPart2Answered => _hasPart2Answered ?? false;
  bool hasHasPart2Answered() => _hasPart2Answered != null;

  // "has_part3_answered" field.
  bool? _hasPart3Answered;
  bool get hasPart3Answered => _hasPart3Answered ?? false;
  bool hasHasPart3Answered() => _hasPart3Answered != null;

  // "part3" field.
  QandAStruct? _part3;
  QandAStruct get part3 => _part3 ?? QandAStruct();
  bool hasPart3() => _part3 != null;

  // "part2" field.
  QandAStruct? _part2;
  QandAStruct get part2 => _part2 ?? QandAStruct();
  bool hasPart2() => _part2 != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['Id']);
    _bloodtype = snapshotData['bloodtype'] as String?;
    _fullname = snapshotData['fullname'] as String?;
    _bloodexpiry = snapshotData['bloodexpiry'] as DateTime?;
    _bloodcenter = snapshotData['bloodcenter'] as String?;
    _cancellationreason = snapshotData['cancellationreason'] as String?;
    _donationtype = snapshotData['donationtype'] as String?;
    _appointmentdate = snapshotData['appointmentdate'] as DateTime?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _donationconfirmedBy = snapshotData['donationconfirmed_by'] as String?;
    _testconfirmedBy = snapshotData['testconfirmed_by'] as String?;
    _rejectedBy = snapshotData['rejected_by'] as String?;
    _cancelledBy = snapshotData['cancelled_by'] as String?;
    _donationDate = snapshotData['donation_date'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _bdisStatus = snapshotData['bdis_status'] as String?;
    _bloodcenterUserid =
        snapshotData['bloodcenter_userid'] as DocumentReference?;
    _blooddonorid = snapshotData['blooddonorid'] as DocumentReference?;
    _hasPart2Answered = snapshotData['has_part2_answered'] as bool?;
    _hasPart3Answered = snapshotData['has_part3_answered'] as bool?;
    _part3 = QandAStruct.maybeFromMap(snapshotData['part3']);
    _part2 = QandAStruct.maybeFromMap(snapshotData['part2']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('BloodStocks');

  static Stream<BloodStocksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BloodStocksRecord.fromSnapshot(s));

  static Future<BloodStocksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BloodStocksRecord.fromSnapshot(s));

  static BloodStocksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BloodStocksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BloodStocksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BloodStocksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BloodStocksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BloodStocksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBloodStocksRecordData({
  int? id,
  String? bloodtype,
  String? fullname,
  DateTime? bloodexpiry,
  String? bloodcenter,
  String? cancellationreason,
  String? donationtype,
  DateTime? appointmentdate,
  DateTime? createdTime,
  String? donationconfirmedBy,
  String? testconfirmedBy,
  String? rejectedBy,
  String? cancelledBy,
  DateTime? donationDate,
  String? status,
  String? bdisStatus,
  DocumentReference? bloodcenterUserid,
  DocumentReference? blooddonorid,
  bool? hasPart2Answered,
  bool? hasPart3Answered,
  QandAStruct? part3,
  QandAStruct? part2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id': id,
      'bloodtype': bloodtype,
      'fullname': fullname,
      'bloodexpiry': bloodexpiry,
      'bloodcenter': bloodcenter,
      'cancellationreason': cancellationreason,
      'donationtype': donationtype,
      'appointmentdate': appointmentdate,
      'created_time': createdTime,
      'donationconfirmed_by': donationconfirmedBy,
      'testconfirmed_by': testconfirmedBy,
      'rejected_by': rejectedBy,
      'cancelled_by': cancelledBy,
      'donation_date': donationDate,
      'status': status,
      'bdis_status': bdisStatus,
      'bloodcenter_userid': bloodcenterUserid,
      'blooddonorid': blooddonorid,
      'has_part2_answered': hasPart2Answered,
      'has_part3_answered': hasPart3Answered,
      'part3': QandAStruct().toMap(),
      'part2': QandAStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "part3" field.
  addQandAStructData(firestoreData, part3, 'part3');

  // Handle nested data for "part2" field.
  addQandAStructData(firestoreData, part2, 'part2');

  return firestoreData;
}

class BloodStocksRecordDocumentEquality implements Equality<BloodStocksRecord> {
  const BloodStocksRecordDocumentEquality();

  @override
  bool equals(BloodStocksRecord? e1, BloodStocksRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.bloodtype == e2?.bloodtype &&
        e1?.fullname == e2?.fullname &&
        e1?.bloodexpiry == e2?.bloodexpiry &&
        e1?.bloodcenter == e2?.bloodcenter &&
        e1?.cancellationreason == e2?.cancellationreason &&
        e1?.donationtype == e2?.donationtype &&
        e1?.appointmentdate == e2?.appointmentdate &&
        e1?.createdTime == e2?.createdTime &&
        e1?.donationconfirmedBy == e2?.donationconfirmedBy &&
        e1?.testconfirmedBy == e2?.testconfirmedBy &&
        e1?.rejectedBy == e2?.rejectedBy &&
        e1?.cancelledBy == e2?.cancelledBy &&
        e1?.donationDate == e2?.donationDate &&
        e1?.status == e2?.status &&
        e1?.bdisStatus == e2?.bdisStatus &&
        e1?.bloodcenterUserid == e2?.bloodcenterUserid &&
        e1?.blooddonorid == e2?.blooddonorid &&
        e1?.hasPart2Answered == e2?.hasPart2Answered &&
        e1?.hasPart3Answered == e2?.hasPart3Answered &&
        e1?.part3 == e2?.part3 &&
        e1?.part2 == e2?.part2;
  }

  @override
  int hash(BloodStocksRecord? e) => const ListEquality().hash([
        e?.id,
        e?.bloodtype,
        e?.fullname,
        e?.bloodexpiry,
        e?.bloodcenter,
        e?.cancellationreason,
        e?.donationtype,
        e?.appointmentdate,
        e?.createdTime,
        e?.donationconfirmedBy,
        e?.testconfirmedBy,
        e?.rejectedBy,
        e?.cancelledBy,
        e?.donationDate,
        e?.status,
        e?.bdisStatus,
        e?.bloodcenterUserid,
        e?.blooddonorid,
        e?.hasPart2Answered,
        e?.hasPart3Answered,
        e?.part3,
        e?.part2
      ]);

  @override
  bool isValidKey(Object? o) => o is BloodStocksRecord;
}
