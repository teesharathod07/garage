import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VehiclesRecord extends FirestoreRecord {
  VehiclesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "vehicle_type" field.
  String? _vehicleType;
  String get vehicleType => _vehicleType ?? '';
  bool hasVehicleType() => _vehicleType != null;

  // "model" field.
  String? _model;
  String get model => _model ?? '';
  bool hasModel() => _model != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  bool hasYear() => _year != null;

  // "registration_number" field.
  String? _registrationNumber;
  String get registrationNumber => _registrationNumber ?? '';
  bool hasRegistrationNumber() => _registrationNumber != null;

  // "fuel_type" field.
  String? _fuelType;
  String get fuelType => _fuelType ?? '';
  bool hasFuelType() => _fuelType != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _vehicleType = snapshotData['vehicle_type'] as String?;
    _model = snapshotData['model'] as String?;
    _year = castToType<int>(snapshotData['year']);
    _registrationNumber = snapshotData['registration_number'] as String?;
    _fuelType = snapshotData['fuel_type'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicles');

  static Stream<VehiclesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VehiclesRecord.fromSnapshot(s));

  static Future<VehiclesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VehiclesRecord.fromSnapshot(s));

  static VehiclesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VehiclesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VehiclesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VehiclesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VehiclesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VehiclesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVehiclesRecordData({
  String? vehicleType,
  String? model,
  int? year,
  String? registrationNumber,
  String? fuelType,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'vehicle_type': vehicleType,
      'model': model,
      'year': year,
      'registration_number': registrationNumber,
      'fuel_type': fuelType,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class VehiclesRecordDocumentEquality implements Equality<VehiclesRecord> {
  const VehiclesRecordDocumentEquality();

  @override
  bool equals(VehiclesRecord? e1, VehiclesRecord? e2) {
    return e1?.vehicleType == e2?.vehicleType &&
        e1?.model == e2?.model &&
        e1?.year == e2?.year &&
        e1?.registrationNumber == e2?.registrationNumber &&
        e1?.fuelType == e2?.fuelType &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(VehiclesRecord? e) => const ListEquality().hash([
        e?.vehicleType,
        e?.model,
        e?.year,
        e?.registrationNumber,
        e?.fuelType,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is VehiclesRecord;
}
