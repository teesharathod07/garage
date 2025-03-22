import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingDetailsRecord extends FirestoreRecord {
  BookingDetailsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "booking_id" field.
  int? _bookingId;
  int get bookingId => _bookingId ?? 0;
  bool hasBookingId() => _bookingId != null;

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "garage_id" field.
  DocumentReference? _garageId;
  DocumentReference? get garageId => _garageId;
  bool hasGarageId() => _garageId != null;

  // "service_id" field.
  DocumentReference? _serviceId;
  DocumentReference? get serviceId => _serviceId;
  bool hasServiceId() => _serviceId != null;

  // "booking_status" field.
  String? _bookingStatus;
  String get bookingStatus => _bookingStatus ?? '';
  bool hasBookingStatus() => _bookingStatus != null;

  // "booking_date_time" field.
  DateTime? _bookingDateTime;
  DateTime? get bookingDateTime => _bookingDateTime;
  bool hasBookingDateTime() => _bookingDateTime != null;

  // "total_price" field.
  int? _totalPrice;
  int get totalPrice => _totalPrice ?? 0;
  bool hasTotalPrice() => _totalPrice != null;

  void _initializeFields() {
    _bookingId = castToType<int>(snapshotData['booking_id']);
    _userId = snapshotData['user_id'] as DocumentReference?;
    _garageId = snapshotData['garage_id'] as DocumentReference?;
    _serviceId = snapshotData['service_id'] as DocumentReference?;
    _bookingStatus = snapshotData['booking_status'] as String?;
    _bookingDateTime = snapshotData['booking_date_time'] as DateTime?;
    _totalPrice = castToType<int>(snapshotData['total_price']);
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
  int? bookingId,
  DocumentReference? userId,
  DocumentReference? garageId,
  DocumentReference? serviceId,
  String? bookingStatus,
  DateTime? bookingDateTime,
  int? totalPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'booking_id': bookingId,
      'user_id': userId,
      'garage_id': garageId,
      'service_id': serviceId,
      'booking_status': bookingStatus,
      'booking_date_time': bookingDateTime,
      'total_price': totalPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class BookingDetailsRecordDocumentEquality
    implements Equality<BookingDetailsRecord> {
  const BookingDetailsRecordDocumentEquality();

  @override
  bool equals(BookingDetailsRecord? e1, BookingDetailsRecord? e2) {
    return e1?.bookingId == e2?.bookingId &&
        e1?.userId == e2?.userId &&
        e1?.garageId == e2?.garageId &&
        e1?.serviceId == e2?.serviceId &&
        e1?.bookingStatus == e2?.bookingStatus &&
        e1?.bookingDateTime == e2?.bookingDateTime &&
        e1?.totalPrice == e2?.totalPrice;
  }

  @override
  int hash(BookingDetailsRecord? e) => const ListEquality().hash([
        e?.bookingId,
        e?.userId,
        e?.garageId,
        e?.serviceId,
        e?.bookingStatus,
        e?.bookingDateTime,
        e?.totalPrice
      ]);

  @override
  bool isValidKey(Object? o) => o is BookingDetailsRecord;
}
