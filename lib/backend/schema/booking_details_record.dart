import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingDetailsRecord extends FirestoreRecord {
  BookingDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "booking_status" field.
  String? _bookingStatus;
  String get bookingStatus => _bookingStatus ?? '';
  bool hasBookingStatus() => _bookingStatus != null;

  // "booking_date_time" field.
  DateTime? _bookingDateTime;
  DateTime? get bookingDateTime => _bookingDateTime;
  bool hasBookingDateTime() => _bookingDateTime != null;

  // "services" field.
  List<String>? _services;
  List<String> get services => _services ?? const [];
  bool hasServices() => _services != null;

  // "vehicle" field.
  String? _vehicle;
  String get vehicle => _vehicle ?? '';
  bool hasVehicle() => _vehicle != null;

  // "booking_time" field.
  String? _bookingTime;
  String get bookingTime => _bookingTime ?? '';
  bool hasBookingTime() => _bookingTime != null;

  // "additionalservice" field.
  String? _additionalservice;
  String get additionalservice => _additionalservice ?? '';
  bool hasAdditionalservice() => _additionalservice != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _bookingStatus = snapshotData['booking_status'] as String?;
    _bookingDateTime = snapshotData['booking_date_time'] as DateTime?;
    _services = getDataList(snapshotData['services']);
    _vehicle = snapshotData['vehicle'] as String?;
    _bookingTime = snapshotData['booking_time'] as String?;
    _additionalservice = snapshotData['additionalservice'] as String?;
    _userId = snapshotData['user_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('booking_details');

  static Stream<BookingDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BookingDetailsRecord.fromSnapshot(s));

  static Future<BookingDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BookingDetailsRecord.fromSnapshot(s));

  static BookingDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BookingDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BookingDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BookingDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BookingDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BookingDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBookingDetailsRecordData({
  String? bookingStatus,
  DateTime? bookingDateTime,
  String? vehicle,
  String? bookingTime,
  String? additionalservice,
  DocumentReference? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'booking_status': bookingStatus,
      'booking_date_time': bookingDateTime,
      'vehicle': vehicle,
      'booking_time': bookingTime,
      'additionalservice': additionalservice,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingDetailsRecordDocumentEquality
    implements Equality<BookingDetailsRecord> {
  const BookingDetailsRecordDocumentEquality();

  @override
  bool equals(BookingDetailsRecord? e1, BookingDetailsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.bookingStatus == e2?.bookingStatus &&
        e1?.bookingDateTime == e2?.bookingDateTime &&
        listEquality.equals(e1?.services, e2?.services) &&
        e1?.vehicle == e2?.vehicle &&
        e1?.bookingTime == e2?.bookingTime &&
        e1?.additionalservice == e2?.additionalservice &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(BookingDetailsRecord? e) => const ListEquality().hash([
        e?.bookingStatus,
        e?.bookingDateTime,
        e?.services,
        e?.vehicle,
        e?.bookingTime,
        e?.additionalservice,
        e?.userId
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingDetailsRecord;
}
