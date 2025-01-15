import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IncidentRecord extends FirestoreRecord {
  IncidentRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _location = snapshotData['location'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('incident');

  static Stream<IncidentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IncidentRecord.fromSnapshot(s));

  static Future<IncidentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IncidentRecord.fromSnapshot(s));

  static IncidentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IncidentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IncidentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IncidentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IncidentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IncidentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIncidentRecordData({
  String? description,
  String? location,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'location': location,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class IncidentRecordDocumentEquality implements Equality<IncidentRecord> {
  const IncidentRecordDocumentEquality();

  @override
  bool equals(IncidentRecord? e1, IncidentRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.location == e2?.location &&
        e1?.type == e2?.type;
  }

  @override
  int hash(IncidentRecord? e) =>
      const ListEquality().hash([e?.description, e?.location, e?.type]);

  @override
  bool isValidKey(Object? o) => o is IncidentRecord;
}
