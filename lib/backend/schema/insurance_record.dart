import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InsuranceRecord extends FirestoreRecord {
  InsuranceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "insurance_id" field.
  int? _insuranceId;
  int get insuranceId => _insuranceId ?? 0;
  bool hasInsuranceId() => _insuranceId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "vehicle_id" field.
  DocumentReference? _vehicleId;
  DocumentReference? get vehicleId => _vehicleId;
  bool hasVehicleId() => _vehicleId != null;

  // "insurance_provider" field.
  String? _insuranceProvider;
  String get insuranceProvider => _insuranceProvider ?? '';
  bool hasInsuranceProvider() => _insuranceProvider != null;

  void _initializeFields() {
    _insuranceId = castToType<int>(snapshotData['insurance_id']);
    _userId = snapshotData['user_id'] as DocumentReference?;
    _vehicleId = snapshotData['vehicle_id'] as DocumentReference?;
    _insuranceProvider = snapshotData['insurance_provider'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('insurance');

  static Stream<InsuranceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InsuranceRecord.fromSnapshot(s));

  static Future<InsuranceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InsuranceRecord.fromSnapshot(s));

  static InsuranceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InsuranceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InsuranceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InsuranceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InsuranceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InsuranceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInsuranceRecordData({
  int? insuranceId,
  DocumentReference? userId,
  DocumentReference? vehicleId,
  String? insuranceProvider,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'insurance_id': insuranceId,
      'user_id': userId,
      'vehicle_id': vehicleId,
      'insurance_provider': insuranceProvider,
    }.withoutNulls,
  );

  return firestoreData;
}

class InsuranceRecordDocumentEquality implements Equality<InsuranceRecord> {
  const InsuranceRecordDocumentEquality();

  @override
  bool equals(InsuranceRecord? e1, InsuranceRecord? e2) {
    return e1?.insuranceId == e2?.insuranceId &&
        e1?.userId == e2?.userId &&
        e1?.vehicleId == e2?.vehicleId &&
        e1?.insuranceProvider == e2?.insuranceProvider;
  }

  @override
  int hash(InsuranceRecord? e) => const ListEquality()
      .hash([e?.insuranceId, e?.userId, e?.vehicleId, e?.insuranceProvider]);

  @override
  bool isValidKey(Object? o) => o is InsuranceRecord;
}
