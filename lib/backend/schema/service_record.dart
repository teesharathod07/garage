import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ServiceRecord extends FirestoreRecord {
  ServiceRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "service_id" field.
  int? _serviceId;
  int get serviceId => _serviceId ?? 0;
  bool hasServiceId() => _serviceId != null;

  // "garage_id" field.
  DocumentReference? _garageId;
  DocumentReference? get garageId => _garageId;
  bool hasGarageId() => _garageId != null;

  // "service_name" field.
  String? _serviceName;
  String get serviceName => _serviceName ?? '';
  bool hasServiceName() => _serviceName != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "availability_status" field.
  String? _availabilityStatus;
  String get availabilityStatus => _availabilityStatus ?? '';
  bool hasAvailabilityStatus() => _availabilityStatus != null;

  void _initializeFields() {
    _serviceId = castToType<int>(snapshotData['service_id']);
    _garageId = snapshotData['garage_id'] as DocumentReference?;
    _serviceName = snapshotData['service_name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _availabilityStatus = snapshotData['availability_status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('service');

  static Stream<ServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ServiceRecord.fromSnapshot(s));

  static Future<ServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ServiceRecord.fromSnapshot(s));

  static ServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createServiceRecordData({
  int? serviceId,
  DocumentReference? garageId,
  String? serviceName,
  String? description,
  int? price,
  String? availabilityStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'service_id': serviceId,
      'garage_id': garageId,
      'service_name': serviceName,
      'description': description,
      'price': price,
      'availability_status': availabilityStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class ServiceRecordDocumentEquality implements Equality<ServiceRecord> {
  const ServiceRecordDocumentEquality();

  @override
  bool equals(ServiceRecord? e1, ServiceRecord? e2) {
    return e1?.serviceId == e2?.serviceId &&
        e1?.garageId == e2?.garageId &&
        e1?.serviceName == e2?.serviceName &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.availabilityStatus == e2?.availabilityStatus;
  }

  @override
  int hash(ServiceRecord? e) => const ListEquality().hash([
        e?.serviceId,
        e?.garageId,
        e?.serviceName,
        e?.description,
        e?.price,
        e?.availabilityStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is ServiceRecord;
}
