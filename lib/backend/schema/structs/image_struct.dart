// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImageStruct extends FFFirebaseStruct {
  ImageStruct({
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static ImageStruct fromMap(Map<String, dynamic> data) => ImageStruct(
        image: data['image'] as String?,
      );

  static ImageStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ImageStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static ImageStruct fromSerializableMap(Map<String, dynamic> data) =>
      ImageStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ImageStruct(${toMap()})';
}

ImageStruct createImageStruct({
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ImageStruct(
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ImageStruct? updateImageStruct(
  ImageStruct? image, {
  bool clearUnsetFields = true,
}) =>
    image
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addImageStructData(
  Map<String, dynamic> firestoreData,
  ImageStruct? image,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (image == null) {
    return;
  }
  if (image.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && image.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final imageData = getImageFirestoreData(image, forFieldValue);
  final nestedData = imageData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = image.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getImageFirestoreData(
  ImageStruct? image, [
  bool forFieldValue = false,
]) {
  if (image == null) {
    return {};
  }
  final firestoreData = mapToFirestore(image.toMap());

  // Add any Firestore field values
  image.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getImageListFirestoreData(
  List<ImageStruct>? images,
) =>
    images?.map((e) => getImageFirestoreData(e, true)).toList() ?? [];
