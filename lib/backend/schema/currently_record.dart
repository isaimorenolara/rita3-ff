import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CurrentlyRecord extends FirestoreRecord {
  CurrentlyRecord._(
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
      FirebaseFirestore.instance.collection('currently');

  static Stream<CurrentlyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CurrentlyRecord.fromSnapshot(s));

  static Future<CurrentlyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CurrentlyRecord.fromSnapshot(s));

  static CurrentlyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CurrentlyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CurrentlyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CurrentlyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CurrentlyRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCurrentlyRecordData({
  DocumentReference? libro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'libro': libro,
    }.withoutNulls,
  );

  return firestoreData;
}
