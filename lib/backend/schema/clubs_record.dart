import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClubsRecord extends FirestoreRecord {
  ClubsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _image = snapshotData['image'] as String?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubs');

  static Stream<ClubsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubsRecord.fromSnapshot(s));

  static Future<ClubsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubsRecord.fromSnapshot(s));

  static ClubsRecord fromSnapshot(DocumentSnapshot snapshot) => ClubsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubsRecordData({
  String? name,
  String? image,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubsRecordDocumentEquality implements Equality<ClubsRecord> {
  const ClubsRecordDocumentEquality();

  @override
  bool equals(ClubsRecord? e1, ClubsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.image == e2?.image &&
        e1?.description == e2?.description;
  }

  @override
  int hash(ClubsRecord? e) =>
      const ListEquality().hash([e?.name, e?.image, e?.description]);

  @override
  bool isValidKey(Object? o) => o is ClubsRecord;
}
