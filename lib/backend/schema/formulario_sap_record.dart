import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormularioSapRecord extends FirestoreRecord {
  FormularioSapRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "telefono" field.
  int? _telefono;
  int get telefono => _telefono ?? 0;
  bool hasTelefono() => _telefono != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "productor" field.
  String? _productor;
  String get productor => _productor ?? '';
  bool hasProductor() => _productor != null;

  // "cedula" field.
  int? _cedula;
  int get cedula => _cedula ?? 0;
  bool hasCedula() => _cedula != null;

  // "codigoSap" field.
  int? _codigoSap;
  int get codigoSap => _codigoSap ?? 0;
  bool hasCodigoSap() => _codigoSap != null;

  // "temperatura" field.
  double? _temperatura;
  double get temperatura => _temperatura ?? 0.0;
  bool hasTemperatura() => _temperatura != null;

  // "calibracion" field.
  double? _calibracion;
  double get calibracion => _calibracion ?? 0.0;
  bool hasCalibracion() => _calibracion != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  void _initializeFields() {
    _telefono = castToType<int>(snapshotData['telefono']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _productor = snapshotData['productor'] as String?;
    _cedula = castToType<int>(snapshotData['cedula']);
    _codigoSap = castToType<int>(snapshotData['codigoSap']);
    _temperatura = castToType<double>(snapshotData['temperatura']);
    _calibracion = castToType<double>(snapshotData['calibracion']);
    _observaciones = snapshotData['observaciones'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('formulario_sap');

  static Stream<FormularioSapRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormularioSapRecord.fromSnapshot(s));

  static Future<FormularioSapRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormularioSapRecord.fromSnapshot(s));

  static FormularioSapRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormularioSapRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormularioSapRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormularioSapRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormularioSapRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormularioSapRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormularioSapRecordData({
  int? telefono,
  DateTime? fecha,
  String? productor,
  int? cedula,
  int? codigoSap,
  double? temperatura,
  double? calibracion,
  String? observaciones,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'telefono': telefono,
      'fecha': fecha,
      'productor': productor,
      'cedula': cedula,
      'codigoSap': codigoSap,
      'temperatura': temperatura,
      'calibracion': calibracion,
      'observaciones': observaciones,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormularioSapRecordDocumentEquality
    implements Equality<FormularioSapRecord> {
  const FormularioSapRecordDocumentEquality();

  @override
  bool equals(FormularioSapRecord? e1, FormularioSapRecord? e2) {
    return e1?.telefono == e2?.telefono &&
        e1?.fecha == e2?.fecha &&
        e1?.productor == e2?.productor &&
        e1?.cedula == e2?.cedula &&
        e1?.codigoSap == e2?.codigoSap &&
        e1?.temperatura == e2?.temperatura &&
        e1?.calibracion == e2?.calibracion &&
        e1?.observaciones == e2?.observaciones;
  }

  @override
  int hash(FormularioSapRecord? e) => const ListEquality().hash([
        e?.telefono,
        e?.fecha,
        e?.productor,
        e?.cedula,
        e?.codigoSap,
        e?.temperatura,
        e?.calibracion,
        e?.observaciones
      ]);

  @override
  bool isValidKey(Object? o) => o is FormularioSapRecord;
}
