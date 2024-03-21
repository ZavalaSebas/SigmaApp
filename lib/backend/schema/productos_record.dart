import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosRecord extends FirestoreRecord {
  ProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreProducto" field.
  String? _nombreProducto;
  String get nombreProducto => _nombreProducto ?? '';
  bool hasNombreProducto() => _nombreProducto != null;

  // "categoriaProducto" field.
  String? _categoriaProducto;
  String get categoriaProducto => _categoriaProducto ?? '';
  bool hasCategoriaProducto() => _categoriaProducto != null;

  // "imagenProducto" field.
  String? _imagenProducto;
  String get imagenProducto => _imagenProducto ?? '';
  bool hasImagenProducto() => _imagenProducto != null;

  // "proveedor" field.
  String? _proveedor;
  String get proveedor => _proveedor ?? '';
  bool hasProveedor() => _proveedor != null;

  void _initializeFields() {
    _nombreProducto = snapshotData['nombreProducto'] as String?;
    _categoriaProducto = snapshotData['categoriaProducto'] as String?;
    _imagenProducto = snapshotData['imagenProducto'] as String?;
    _proveedor = snapshotData['proveedor'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('productos');

  static Stream<ProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductosRecord.fromSnapshot(s));

  static Future<ProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductosRecord.fromSnapshot(s));

  static ProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosRecordData({
  String? nombreProducto,
  String? categoriaProducto,
  String? imagenProducto,
  String? proveedor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreProducto': nombreProducto,
      'categoriaProducto': categoriaProducto,
      'imagenProducto': imagenProducto,
      'proveedor': proveedor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosRecordDocumentEquality implements Equality<ProductosRecord> {
  const ProductosRecordDocumentEquality();

  @override
  bool equals(ProductosRecord? e1, ProductosRecord? e2) {
    return e1?.nombreProducto == e2?.nombreProducto &&
        e1?.categoriaProducto == e2?.categoriaProducto &&
        e1?.imagenProducto == e2?.imagenProducto &&
        e1?.proveedor == e2?.proveedor;
  }

  @override
  int hash(ProductosRecord? e) => const ListEquality().hash([
        e?.nombreProducto,
        e?.categoriaProducto,
        e?.imagenProducto,
        e?.proveedor
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosRecord;
}
