// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoriaStruct extends FFFirebaseStruct {
  CategoriaStruct({
    DocumentReference? categoria,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _categoria = categoria,
        super(firestoreUtilData);

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  set categoria(DocumentReference? val) => _categoria = val;
  bool hasCategoria() => _categoria != null;

  static CategoriaStruct fromMap(Map<String, dynamic> data) => CategoriaStruct(
        categoria: data['categoria'] as DocumentReference?,
      );

  static CategoriaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CategoriaStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'categoria': _categoria,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'categoria': serializeParam(
          _categoria,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static CategoriaStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoriaStruct(
        categoria: deserializeParam(
          data['categoria'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['categorias'],
        ),
      );

  @override
  String toString() => 'CategoriaStruct(${toMap()})';
}

CategoriaStruct createCategoriaStruct({
  DocumentReference? categoria,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoriaStruct(
      categoria: categoria,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoriaStruct? updateCategoriaStruct(
  CategoriaStruct? categoria, {
  bool clearUnsetFields = true,
}) =>
    categoria
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addCategoriaStructData(
  Map<String, dynamic> firestoreData,
  CategoriaStruct? categoria,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categoria == null) {
    return;
  }
  if (categoria.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && categoria.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoriaData = getCategoriaFirestoreData(categoria, forFieldValue);
  final nestedData = categoriaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = categoria.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoriaFirestoreData(
  CategoriaStruct? categoria, [
  bool forFieldValue = false,
]) {
  if (categoria == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categoria.toMap());

  // Add any Firestore field values
  categoria.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoriaListFirestoreData(
  List<CategoriaStruct>? categorias,
) =>
    categorias?.map((e) => getCategoriaFirestoreData(e, true)).toList() ?? [];
