import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "birthdate" field.
  DateTime? _birthdate;
  DateTime? get birthdate => _birthdate;
  bool hasBirthdate() => _birthdate != null;

  // "civil_status" field.
  String? _civilStatus;
  String get civilStatus => _civilStatus ?? '';
  bool hasCivilStatus() => _civilStatus != null;

  // "occupation" field.
  String? _occupation;
  String get occupation => _occupation ?? '';
  bool hasOccupation() => _occupation != null;

  // "firstname" field.
  String? _firstname;
  String get firstname => _firstname ?? '';
  bool hasFirstname() => _firstname != null;

  // "middlename" field.
  String? _middlename;
  String get middlename => _middlename ?? '';
  bool hasMiddlename() => _middlename != null;

  // "lastname" field.
  String? _lastname;
  String get lastname => _lastname ?? '';
  bool hasLastname() => _lastname != null;

  // "suffix" field.
  String? _suffix;
  String get suffix => _suffix ?? '';
  bool hasSuffix() => _suffix != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  bool hasNationality() => _nationality != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  bool hasStreet() => _street != null;

  // "barangay" field.
  String? _barangay;
  String get barangay => _barangay ?? '';
  bool hasBarangay() => _barangay != null;

  // "municipality" field.
  String? _municipality;
  String get municipality => _municipality ?? '';
  bool hasMunicipality() => _municipality != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  bool hasProvince() => _province != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  bool hasZipcode() => _zipcode != null;

  // "bloodtype" field.
  String? _bloodtype;
  String get bloodtype => _bloodtype ?? '';
  bool hasBloodtype() => _bloodtype != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "houseno" field.
  String? _houseno;
  String get houseno => _houseno ?? '';
  bool hasHouseno() => _houseno != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "is_superadmin" field.
  bool? _isSuperadmin;
  bool get isSuperadmin => _isSuperadmin ?? false;
  bool hasIsSuperadmin() => _isSuperadmin != null;

  // "company_name" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _birthdate = snapshotData['birthdate'] as DateTime?;
    _civilStatus = snapshotData['civil_status'] as String?;
    _occupation = snapshotData['occupation'] as String?;
    _firstname = snapshotData['firstname'] as String?;
    _middlename = snapshotData['middlename'] as String?;
    _lastname = snapshotData['lastname'] as String?;
    _suffix = snapshotData['suffix'] as String?;
    _nationality = snapshotData['nationality'] as String?;
    _street = snapshotData['street'] as String?;
    _barangay = snapshotData['barangay'] as String?;
    _municipality = snapshotData['municipality'] as String?;
    _province = snapshotData['province'] as String?;
    _zipcode = snapshotData['zipcode'] as String?;
    _bloodtype = snapshotData['bloodtype'] as String?;
    _level = snapshotData['level'] as String?;
    _houseno = snapshotData['houseno'] as String?;
    _gender = snapshotData['gender'] as String?;
    _isSuperadmin = snapshotData['is_superadmin'] as bool?;
    _companyName = snapshotData['company_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  DateTime? birthdate,
  String? civilStatus,
  String? occupation,
  String? firstname,
  String? middlename,
  String? lastname,
  String? suffix,
  String? nationality,
  String? street,
  String? barangay,
  String? municipality,
  String? province,
  String? zipcode,
  String? bloodtype,
  String? level,
  String? houseno,
  String? gender,
  bool? isSuperadmin,
  String? companyName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'birthdate': birthdate,
      'civil_status': civilStatus,
      'occupation': occupation,
      'firstname': firstname,
      'middlename': middlename,
      'lastname': lastname,
      'suffix': suffix,
      'nationality': nationality,
      'street': street,
      'barangay': barangay,
      'municipality': municipality,
      'province': province,
      'zipcode': zipcode,
      'bloodtype': bloodtype,
      'level': level,
      'houseno': houseno,
      'gender': gender,
      'is_superadmin': isSuperadmin,
      'company_name': companyName,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.birthdate == e2?.birthdate &&
        e1?.civilStatus == e2?.civilStatus &&
        e1?.occupation == e2?.occupation &&
        e1?.firstname == e2?.firstname &&
        e1?.middlename == e2?.middlename &&
        e1?.lastname == e2?.lastname &&
        e1?.suffix == e2?.suffix &&
        e1?.nationality == e2?.nationality &&
        e1?.street == e2?.street &&
        e1?.barangay == e2?.barangay &&
        e1?.municipality == e2?.municipality &&
        e1?.province == e2?.province &&
        e1?.zipcode == e2?.zipcode &&
        e1?.bloodtype == e2?.bloodtype &&
        e1?.level == e2?.level &&
        e1?.houseno == e2?.houseno &&
        e1?.gender == e2?.gender &&
        e1?.isSuperadmin == e2?.isSuperadmin &&
        e1?.companyName == e2?.companyName;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.birthdate,
        e?.civilStatus,
        e?.occupation,
        e?.firstname,
        e?.middlename,
        e?.lastname,
        e?.suffix,
        e?.nationality,
        e?.street,
        e?.barangay,
        e?.municipality,
        e?.province,
        e?.zipcode,
        e?.bloodtype,
        e?.level,
        e?.houseno,
        e?.gender,
        e?.isSuperadmin,
        e?.companyName
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
