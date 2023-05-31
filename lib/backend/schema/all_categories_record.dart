import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllCategoriesRecord extends FirestoreRecord {
  AllCategoriesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('all_categories');

  static Stream<AllCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllCategoriesRecord.fromSnapshot(s));

  static Future<AllCategoriesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllCategoriesRecord.fromSnapshot(s));

  static AllCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createAllCategoriesRecordData({
  String? nombre,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
    }.withoutNulls,
  );

  return firestoreData;
}
