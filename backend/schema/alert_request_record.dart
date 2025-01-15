import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AlertRequestRecord extends FirestoreRecord {
  AlertRequestRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "student" field.
  DocumentReference? _student;
  DocumentReference? get student => _student;
  bool hasStudent() => _student != null;

  // "student_email" field.
  String? _studentEmail;
  String get studentEmail => _studentEmail ?? '';
  bool hasStudentEmail() => _studentEmail != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "accepter_email" field.
  String? _accepterEmail;
  String get accepterEmail => _accepterEmail ?? '';
  bool hasAccepterEmail() => _accepterEmail != null;

  // "accepter" field.
  DocumentReference? _accepter;
  DocumentReference? get accepter => _accepter;
  bool hasAccepter() => _accepter != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "created_datetime" field.
  DateTime? _createdDatetime;
  DateTime? get createdDatetime => _createdDatetime;
  bool hasCreatedDatetime() => _createdDatetime != null;

  void _initializeFields() {
    _student = snapshotData['student'] as DocumentReference?;
    _studentEmail = snapshotData['student_email'] as String?;
    _status = snapshotData['status'] as String?;
    _accepterEmail = snapshotData['accepter_email'] as String?;
    _accepter = snapshotData['accepter'] as DocumentReference?;
    _location = snapshotData['location'] as LatLng?;
    _createdDatetime = snapshotData['created_datetime'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alert_request');

  static Stream<AlertRequestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlertRequestRecord.fromSnapshot(s));

  static Future<AlertRequestRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlertRequestRecord.fromSnapshot(s));

  static AlertRequestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AlertRequestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlertRequestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlertRequestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlertRequestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlertRequestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlertRequestRecordData({
  DocumentReference? student,
  String? studentEmail,
  String? status,
  String? accepterEmail,
  DocumentReference? accepter,
  LatLng? location,
  DateTime? createdDatetime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'student': student,
      'student_email': studentEmail,
      'status': status,
      'accepter_email': accepterEmail,
      'accepter': accepter,
      'location': location,
      'created_datetime': createdDatetime,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlertRequestRecordDocumentEquality
    implements Equality<AlertRequestRecord> {
  const AlertRequestRecordDocumentEquality();

  @override
  bool equals(AlertRequestRecord? e1, AlertRequestRecord? e2) {
    return e1?.student == e2?.student &&
        e1?.studentEmail == e2?.studentEmail &&
        e1?.status == e2?.status &&
        e1?.accepterEmail == e2?.accepterEmail &&
        e1?.accepter == e2?.accepter &&
        e1?.location == e2?.location &&
        e1?.createdDatetime == e2?.createdDatetime;
  }

  @override
  int hash(AlertRequestRecord? e) => const ListEquality().hash([
        e?.student,
        e?.studentEmail,
        e?.status,
        e?.accepterEmail,
        e?.accepter,
        e?.location,
        e?.createdDatetime
      ]);

  @override
  bool isValidKey(Object? o) => o is AlertRequestRecord;
}
