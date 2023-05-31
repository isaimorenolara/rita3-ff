import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LibrosRecord extends FirestoreRecord {
  LibrosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "autor" field.
  String? _autor;
  String get autor => _autor ?? '';
  bool hasAutor() => _autor != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "rate" field.
  String? _rate;
  String get rate => _rate ?? '';
  bool hasRate() => _rate != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _autor = snapshotData['autor'] as String?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _descripcion = snapshotData['descripcion'] as String?;
    _rate = snapshotData['rate'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('libros');

  static Stream<LibrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LibrosRecord.fromSnapshot(s));

  static Future<LibrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LibrosRecord.fromSnapshot(s));

  static LibrosRecord fromSnapshot(DocumentSnapshot snapshot) => LibrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LibrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LibrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LibrosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createLibrosRecordData({
  String? autor,
  DocumentReference? categoria,
  String? descripcion,
  String? rate,
  String? titulo,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'autor': autor,
      'categoria': categoria,
      'descripcion': descripcion,
      'rate': rate,
      'titulo': titulo,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}
