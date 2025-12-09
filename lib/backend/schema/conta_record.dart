import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContaRecord extends FirestoreRecord {
  ContaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "accountnumber" field.
  int? _accountnumber;
  int get accountnumber => _accountnumber ?? 0;
  bool hasAccountnumber() => _accountnumber != null;

  void _initializeFields() {
    _creator = snapshotData['creator'] as DocumentReference?;
    _accountnumber = castToType<int>(snapshotData['accountnumber']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('conta');

  static Stream<ContaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContaRecord.fromSnapshot(s));

  static Future<ContaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContaRecord.fromSnapshot(s));

  static ContaRecord fromSnapshot(DocumentSnapshot snapshot) => ContaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContaRecordData({
  DocumentReference? creator,
  int? accountnumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creator': creator,
      'accountnumber': accountnumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContaRecordDocumentEquality implements Equality<ContaRecord> {
  const ContaRecordDocumentEquality();

  @override
  bool equals(ContaRecord? e1, ContaRecord? e2) {
    return e1?.creator == e2?.creator && e1?.accountnumber == e2?.accountnumber;
  }

  @override
  int hash(ContaRecord? e) =>
      const ListEquality().hash([e?.creator, e?.accountnumber]);

  @override
  bool isValidKey(Object? o) => o is ContaRecord;
}
