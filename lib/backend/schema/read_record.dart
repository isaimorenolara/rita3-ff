import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReadRecord extends FirestoreRecord {
  ReadRecord._(
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
      FirebaseFirestore.instance.collection('read');

  static Stream<ReadRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReadRecord.fromSnapshot(s));

  static Future<ReadRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReadRecord.fromSnapshot(s));

  static ReadRecord fromSnapshot(DocumentSnapshot snapshot) => ReadRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReadRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReadRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReadRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createReadRecordData({
  DocumentReference? libro,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'libro': libro,
    }.withoutNulls,
  );

  return firestoreData;
}
