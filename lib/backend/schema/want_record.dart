import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class WantRecord extends FirestoreRecord {
  WantRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "libro" field.
  DocumentReference? _libro;
  DocumentReference? get libro => _libro;
  bool hasLibro() => _libro != null;

  void _initializeFields() {
    _libro = snapshotData['libro'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('want');

  static Stream<WantRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WantRecord.fromSnapshot(s));

  static Future<WantRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WantRecord.fromSnapshot(s));

  static WantRecord fromSnapshot(DocumentSnapshot snapshot) => WantRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WantRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WantRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WantRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createWantRecordData({
  DocumentReference? libro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'libro': libro,
    }.withoutNulls,
  );

  return firestoreData;
}
