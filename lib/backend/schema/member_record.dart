import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MemberRecord extends FirestoreRecord {
  MemberRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phone" field.
  String? _phone;
  String get phone => _phone ?? '';
  bool hasPhone() => _phone != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phone = snapshotData['phone'] as String?;
    _email = snapshotData['email'] as String?;
    _position = snapshotData['position'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('member')
          : FirebaseFirestore.instance.collectionGroup('member');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('member').doc();

  static Stream<MemberRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MemberRecord.fromSnapshot(s));

  static Future<MemberRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MemberRecord.fromSnapshot(s));

  static MemberRecord fromSnapshot(DocumentSnapshot snapshot) => MemberRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MemberRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MemberRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MemberRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MemberRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMemberRecordData({
  String? name,
  String? phone,
  String? email,
  String? position,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phone': phone,
      'email': email,
      'position': position,
    }.withoutNulls,
  );

  return firestoreData;
}

class MemberRecordDocumentEquality implements Equality<MemberRecord> {
  const MemberRecordDocumentEquality();

  @override
  bool equals(MemberRecord? e1, MemberRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phone == e2?.phone &&
        e1?.email == e2?.email &&
        e1?.position == e2?.position;
  }

  @override
  int hash(MemberRecord? e) =>
      const ListEquality().hash([e?.name, e?.phone, e?.email, e?.position]);

  @override
  bool isValidKey(Object? o) => o is MemberRecord;
}
