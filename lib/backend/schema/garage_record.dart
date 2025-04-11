import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GarageRecord extends FirestoreRecord {
  GarageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "garage_name" field.
  String? _garageName;
  String get garageName => _garageName ?? '';
  bool hasGarageName() => _garageName != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "service_offerd" field.
  List<String>? _serviceOfferd;
  List<String> get serviceOfferd => _serviceOfferd ?? const [];
  bool hasServiceOfferd() => _serviceOfferd != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "phone_number" field.
  int? _phoneNumber;
  int get phoneNumber => _phoneNumber ?? 0;
  bool hasPhoneNumber() => _phoneNumber != null;

  // "openingtime" field.
  DateTime? _openingtime;
  DateTime? get openingtime => _openingtime;
  bool hasOpeningtime() => _openingtime != null;

  // "closingtime" field.
  DateTime? _closingtime;
  DateTime? get closingtime => _closingtime;
  bool hasClosingtime() => _closingtime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  void _initializeFields() {
    _garageName = snapshotData['garage_name'] as String?;
    _location = snapshotData['location'] as String?;
    _serviceOfferd = getDataList(snapshotData['service_offerd']);
    _rating = castToType<int>(snapshotData['rating']);
    _phoneNumber = castToType<int>(snapshotData['phone_number']);
    _openingtime = snapshotData['openingtime'] as DateTime?;
    _closingtime = snapshotData['closingtime'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _desc = snapshotData['desc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('garage');

  static Stream<GarageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GarageRecord.fromSnapshot(s));

  static Future<GarageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GarageRecord.fromSnapshot(s));

  static GarageRecord fromSnapshot(DocumentSnapshot snapshot) => GarageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GarageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GarageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GarageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GarageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGarageRecordData({
  String? garageName,
  String? location,
  int? rating,
  int? phoneNumber,
  DateTime? openingtime,
  DateTime? closingtime,
  String? status,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'garage_name': garageName,
      'location': location,
      'rating': rating,
      'phone_number': phoneNumber,
      'openingtime': openingtime,
      'closingtime': closingtime,
      'status': status,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class GarageRecordDocumentEquality implements Equality<GarageRecord> {
  const GarageRecordDocumentEquality();

  @override
  bool equals(GarageRecord? e1, GarageRecord? e2) {
    const listEquality = ListEquality();
    return e1?.garageName == e2?.garageName &&
        e1?.location == e2?.location &&
        listEquality.equals(e1?.serviceOfferd, e2?.serviceOfferd) &&
        e1?.rating == e2?.rating &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.openingtime == e2?.openingtime &&
        e1?.closingtime == e2?.closingtime &&
        e1?.status == e2?.status &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(GarageRecord? e) => const ListEquality().hash([
        e?.garageName,
        e?.location,
        e?.serviceOfferd,
        e?.rating,
        e?.phoneNumber,
        e?.openingtime,
        e?.closingtime,
        e?.status,
        e?.desc
      ]);

  @override
  bool isValidKey(Object? o) => o is GarageRecord;
}
