import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserbusinessRecord extends FirestoreRecord {
  UserbusinessRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "age" field.
  int? _age;
  int get age => _age ?? 0;
  bool hasAge() => _age != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "userTitle" field.
  String? _userTitle;
  String get userTitle => _userTitle ?? '';
  bool hasUserTitle() => _userTitle != null;

  // "copyofpassport" field.
  String? _copyofpassport;
  String get copyofpassport => _copyofpassport ?? '';
  bool hasCopyofpassport() => _copyofpassport != null;

  // "accountNumber" field.
  int? _accountNumber;
  int get accountNumber => _accountNumber ?? 0;
  bool hasAccountNumber() => _accountNumber != null;

  // "nationality" field.
  String? _nationality;
  String get nationality => _nationality ?? '';
  bool hasNationality() => _nationality != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "dateofbirth" field.
  String? _dateofbirth;
  String get dateofbirth => _dateofbirth ?? '';
  bool hasDateofbirth() => _dateofbirth != null;

  // "passportnumber" field.
  String? _passportnumber;
  String get passportnumber => _passportnumber ?? '';
  bool hasPassportnumber() => _passportnumber != null;

  // "passportexpirationdate" field.
  String? _passportexpirationdate;
  String get passportexpirationdate => _passportexpirationdate ?? '';
  bool hasPassportexpirationdate() => _passportexpirationdate != null;

  // "residencenumber" field.
  String? _residencenumber;
  String get residencenumber => _residencenumber ?? '';
  bool hasResidencenumber() => _residencenumber != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "zipcode" field.
  String? _zipcode;
  String get zipcode => _zipcode ?? '';
  bool hasZipcode() => _zipcode != null;

  // "CompanyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "Companyregistrationnumber" field.
  String? _companyregistrationnumber;
  String get companyregistrationnumber => _companyregistrationnumber ?? '';
  bool hasCompanyregistrationnumber() => _companyregistrationnumber != null;

  // "copyofcompanyregistration" field.
  String? _copyofcompanyregistration;
  String get copyofcompanyregistration => _copyofcompanyregistration ?? '';
  bool hasCopyofcompanyregistration() => _copyofcompanyregistration != null;

  // "screenshot" field.
  String? _screenshot;
  String get screenshot => _screenshot ?? '';
  bool hasScreenshot() => _screenshot != null;

  // "companysadress" field.
  String? _companysadress;
  String get companysadress => _companysadress ?? '';
  bool hasCompanysadress() => _companysadress != null;

  // "companyaddressnumber" field.
  String? _companyaddressnumber;
  String get companyaddressnumber => _companyaddressnumber ?? '';
  bool hasCompanyaddressnumber() => _companyaddressnumber != null;

  // "companycity" field.
  String? _companycity;
  String get companycity => _companycity ?? '';
  bool hasCompanycity() => _companycity != null;

  // "companycountry" field.
  String? _companycountry;
  String get companycountry => _companycountry ?? '';
  bool hasCompanycountry() => _companycountry != null;

  // "companyzipcode" field.
  String? _companyzipcode;
  String get companyzipcode => _companyzipcode ?? '';
  bool hasCompanyzipcode() => _companyzipcode != null;

  // "Balance" field.
  double? _balance;
  double get balance => _balance ?? 0.0;
  bool hasBalance() => _balance != null;

  // "BalanceZloty" field.
  double? _balanceZloty;
  double get balanceZloty => _balanceZloty ?? 0.0;
  bool hasBalanceZloty() => _balanceZloty != null;

  // "BalanceEuro" field.
  double? _balanceEuro;
  double get balanceEuro => _balanceEuro ?? 0.0;
  bool hasBalanceEuro() => _balanceEuro != null;

  // "progressbarproperties" field.
  double? _progressbarproperties;
  double get progressbarproperties => _progressbarproperties ?? 0.0;
  bool hasProgressbarproperties() => _progressbarproperties != null;

  // "progressbarpropertiesZloty" field.
  double? _progressbarpropertiesZloty;
  double get progressbarpropertiesZloty => _progressbarpropertiesZloty ?? 0.0;
  bool hasProgressbarpropertiesZloty() => _progressbarpropertiesZloty != null;

  // "progressbarpropertiesEuro" field.
  double? _progressbarpropertiesEuro;
  double get progressbarpropertiesEuro => _progressbarpropertiesEuro ?? 0.0;
  bool hasProgressbarpropertiesEuro() => _progressbarpropertiesEuro != null;

  // "AccountNumberZloty" field.
  String? _accountNumberZloty;
  String get accountNumberZloty => _accountNumberZloty ?? '';
  bool hasAccountNumberZloty() => _accountNumberZloty != null;

  // "AccountNumberEuro" field.
  String? _accountNumberEuro;
  String get accountNumberEuro => _accountNumberEuro ?? '';
  bool hasAccountNumberEuro() => _accountNumberEuro != null;

  // "AccountNumberDollar" field.
  String? _accountNumberDollar;
  String get accountNumberDollar => _accountNumberDollar ?? '';
  bool hasAccountNumberDollar() => _accountNumberDollar != null;

  // "AccountNumberTransfer" field.
  String? _accountNumberTransfer;
  String get accountNumberTransfer => _accountNumberTransfer ?? '';
  bool hasAccountNumberTransfer() => _accountNumberTransfer != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _uid = snapshotData['uid'] as String?;
    _age = castToType<int>(snapshotData['age']);
    _location = snapshotData['location'] as LatLng?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userTitle = snapshotData['userTitle'] as String?;
    _copyofpassport = snapshotData['copyofpassport'] as String?;
    _accountNumber = castToType<int>(snapshotData['accountNumber']);
    _nationality = snapshotData['nationality'] as String?;
    _address = snapshotData['address'] as String?;
    _dateofbirth = snapshotData['dateofbirth'] as String?;
    _passportnumber = snapshotData['passportnumber'] as String?;
    _passportexpirationdate = snapshotData['passportexpirationdate'] as String?;
    _residencenumber = snapshotData['residencenumber'] as String?;
    _city = snapshotData['city'] as String?;
    _country = snapshotData['country'] as String?;
    _zipcode = snapshotData['zipcode'] as String?;
    _companyName = snapshotData['CompanyName'] as String?;
    _companyregistrationnumber =
        snapshotData['Companyregistrationnumber'] as String?;
    _copyofcompanyregistration =
        snapshotData['copyofcompanyregistration'] as String?;
    _screenshot = snapshotData['screenshot'] as String?;
    _companysadress = snapshotData['companysadress'] as String?;
    _companyaddressnumber = snapshotData['companyaddressnumber'] as String?;
    _companycity = snapshotData['companycity'] as String?;
    _companycountry = snapshotData['companycountry'] as String?;
    _companyzipcode = snapshotData['companyzipcode'] as String?;
    _balance = castToType<double>(snapshotData['Balance']);
    _balanceZloty = castToType<double>(snapshotData['BalanceZloty']);
    _balanceEuro = castToType<double>(snapshotData['BalanceEuro']);
    _progressbarproperties =
        castToType<double>(snapshotData['progressbarproperties']);
    _progressbarpropertiesZloty =
        castToType<double>(snapshotData['progressbarpropertiesZloty']);
    _progressbarpropertiesEuro =
        castToType<double>(snapshotData['progressbarpropertiesEuro']);
    _accountNumberZloty = snapshotData['AccountNumberZloty'] as String?;
    _accountNumberEuro = snapshotData['AccountNumberEuro'] as String?;
    _accountNumberDollar = snapshotData['AccountNumberDollar'] as String?;
    _accountNumberTransfer = snapshotData['AccountNumberTransfer'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userbusiness');

  static Stream<UserbusinessRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserbusinessRecord.fromSnapshot(s));

  static Future<UserbusinessRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserbusinessRecord.fromSnapshot(s));

  static UserbusinessRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserbusinessRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserbusinessRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserbusinessRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserbusinessRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserbusinessRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserbusinessRecordData({
  String? displayName,
  String? email,
  String? password,
  String? uid,
  int? age,
  LatLng? location,
  String? phoneNumber,
  String? photoUrl,
  DateTime? createdTime,
  String? userTitle,
  String? copyofpassport,
  int? accountNumber,
  String? nationality,
  String? address,
  String? dateofbirth,
  String? passportnumber,
  String? passportexpirationdate,
  String? residencenumber,
  String? city,
  String? country,
  String? zipcode,
  String? companyName,
  String? companyregistrationnumber,
  String? copyofcompanyregistration,
  String? screenshot,
  String? companysadress,
  String? companyaddressnumber,
  String? companycity,
  String? companycountry,
  String? companyzipcode,
  double? balance,
  double? balanceZloty,
  double? balanceEuro,
  double? progressbarproperties,
  double? progressbarpropertiesZloty,
  double? progressbarpropertiesEuro,
  String? accountNumberZloty,
  String? accountNumberEuro,
  String? accountNumberDollar,
  String? accountNumberTransfer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'email': email,
      'password': password,
      'uid': uid,
      'age': age,
      'location': location,
      'phone_number': phoneNumber,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'userTitle': userTitle,
      'copyofpassport': copyofpassport,
      'accountNumber': accountNumber,
      'nationality': nationality,
      'address': address,
      'dateofbirth': dateofbirth,
      'passportnumber': passportnumber,
      'passportexpirationdate': passportexpirationdate,
      'residencenumber': residencenumber,
      'city': city,
      'country': country,
      'zipcode': zipcode,
      'CompanyName': companyName,
      'Companyregistrationnumber': companyregistrationnumber,
      'copyofcompanyregistration': copyofcompanyregistration,
      'screenshot': screenshot,
      'companysadress': companysadress,
      'companyaddressnumber': companyaddressnumber,
      'companycity': companycity,
      'companycountry': companycountry,
      'companyzipcode': companyzipcode,
      'Balance': balance,
      'BalanceZloty': balanceZloty,
      'BalanceEuro': balanceEuro,
      'progressbarproperties': progressbarproperties,
      'progressbarpropertiesZloty': progressbarpropertiesZloty,
      'progressbarpropertiesEuro': progressbarpropertiesEuro,
      'AccountNumberZloty': accountNumberZloty,
      'AccountNumberEuro': accountNumberEuro,
      'AccountNumberDollar': accountNumberDollar,
      'AccountNumberTransfer': accountNumberTransfer,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserbusinessRecordDocumentEquality
    implements Equality<UserbusinessRecord> {
  const UserbusinessRecordDocumentEquality();

  @override
  bool equals(UserbusinessRecord? e1, UserbusinessRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.uid == e2?.uid &&
        e1?.age == e2?.age &&
        e1?.location == e2?.location &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.userTitle == e2?.userTitle &&
        e1?.copyofpassport == e2?.copyofpassport &&
        e1?.accountNumber == e2?.accountNumber &&
        e1?.nationality == e2?.nationality &&
        e1?.address == e2?.address &&
        e1?.dateofbirth == e2?.dateofbirth &&
        e1?.passportnumber == e2?.passportnumber &&
        e1?.passportexpirationdate == e2?.passportexpirationdate &&
        e1?.residencenumber == e2?.residencenumber &&
        e1?.city == e2?.city &&
        e1?.country == e2?.country &&
        e1?.zipcode == e2?.zipcode &&
        e1?.companyName == e2?.companyName &&
        e1?.companyregistrationnumber == e2?.companyregistrationnumber &&
        e1?.copyofcompanyregistration == e2?.copyofcompanyregistration &&
        e1?.screenshot == e2?.screenshot &&
        e1?.companysadress == e2?.companysadress &&
        e1?.companyaddressnumber == e2?.companyaddressnumber &&
        e1?.companycity == e2?.companycity &&
        e1?.companycountry == e2?.companycountry &&
        e1?.companyzipcode == e2?.companyzipcode &&
        e1?.balance == e2?.balance &&
        e1?.balanceZloty == e2?.balanceZloty &&
        e1?.balanceEuro == e2?.balanceEuro &&
        e1?.progressbarproperties == e2?.progressbarproperties &&
        e1?.progressbarpropertiesZloty == e2?.progressbarpropertiesZloty &&
        e1?.progressbarpropertiesEuro == e2?.progressbarpropertiesEuro &&
        e1?.accountNumberZloty == e2?.accountNumberZloty &&
        e1?.accountNumberEuro == e2?.accountNumberEuro &&
        e1?.accountNumberDollar == e2?.accountNumberDollar &&
        e1?.accountNumberTransfer == e2?.accountNumberTransfer;
  }

  @override
  int hash(UserbusinessRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.email,
        e?.password,
        e?.uid,
        e?.age,
        e?.location,
        e?.phoneNumber,
        e?.photoUrl,
        e?.createdTime,
        e?.userTitle,
        e?.copyofpassport,
        e?.accountNumber,
        e?.nationality,
        e?.address,
        e?.dateofbirth,
        e?.passportnumber,
        e?.passportexpirationdate,
        e?.residencenumber,
        e?.city,
        e?.country,
        e?.zipcode,
        e?.companyName,
        e?.companyregistrationnumber,
        e?.copyofcompanyregistration,
        e?.screenshot,
        e?.companysadress,
        e?.companyaddressnumber,
        e?.companycity,
        e?.companycountry,
        e?.companyzipcode,
        e?.balance,
        e?.balanceZloty,
        e?.balanceEuro,
        e?.progressbarproperties,
        e?.progressbarpropertiesZloty,
        e?.progressbarpropertiesEuro,
        e?.accountNumberZloty,
        e?.accountNumberEuro,
        e?.accountNumberDollar,
        e?.accountNumberTransfer
      ]);

  @override
  bool isValidKey(Object? o) => o is UserbusinessRecord;
}
