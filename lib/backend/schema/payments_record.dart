import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Value" field.
  double? _value;
  double get value => _value ?? 0.0;
  bool hasValue() => _value != null;

  // "Reasonfortransaction" field.
  String? _reasonfortransaction;
  String get reasonfortransaction => _reasonfortransaction ?? '';
  bool hasReasonfortransaction() => _reasonfortransaction != null;

  // "dates" field.
  DateTime? _dates;
  DateTime? get dates => _dates;
  bool hasDates() => _dates != null;

  // "receiver" field.
  DocumentReference? _receiver;
  DocumentReference? get receiver => _receiver;
  bool hasReceiver() => _receiver != null;

  // "payer" field.
  DocumentReference? _payer;
  DocumentReference? get payer => _payer;
  bool hasPayer() => _payer != null;

  // "users" field.
  List<DocumentReference>? _users;
  List<DocumentReference> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _value = castToType<double>(snapshotData['Value']);
    _reasonfortransaction = snapshotData['Reasonfortransaction'] as String?;
    _dates = snapshotData['dates'] as DateTime?;
    _receiver = snapshotData['receiver'] as DocumentReference?;
    _payer = snapshotData['payer'] as DocumentReference?;
    _users = getDataList(snapshotData['users']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Payments');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentsRecordData({
  double? value,
  String? reasonfortransaction,
  DateTime? dates,
  DocumentReference? receiver,
  DocumentReference? payer,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Value': value,
      'Reasonfortransaction': reasonfortransaction,
      'dates': dates,
      'receiver': receiver,
      'payer': payer,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentsRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentsRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.value == e2?.value &&
        e1?.reasonfortransaction == e2?.reasonfortransaction &&
        e1?.dates == e2?.dates &&
        e1?.receiver == e2?.receiver &&
        e1?.payer == e2?.payer &&
        listEquality.equals(e1?.users, e2?.users);
  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality().hash([
        e?.value,
        e?.reasonfortransaction,
        e?.dates,
        e?.receiver,
        e?.payer,
        e?.users
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
