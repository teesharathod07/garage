import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewsRecord extends FirestoreRecord {
  ReviewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "review_id" field.
  int? _reviewId;
  int get reviewId => _reviewId ?? 0;
  bool hasReviewId() => _reviewId != null;

  // "user_id" field.
  int? _userId;
  int get userId => _userId ?? 0;
  bool hasUserId() => _userId != null;

  // "garage_id" field.
  DocumentReference? _garageId;
  DocumentReference? get garageId => _garageId;
  bool hasGarageId() => _garageId != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "review_text" field.
  String? _reviewText;
  String get reviewText => _reviewText ?? '';
  bool hasReviewText() => _reviewText != null;

  void _initializeFields() {
    _reviewId = castToType<int>(snapshotData['review_id']);
    _userId = castToType<int>(snapshotData['user_id']);
    _garageId = snapshotData['garage_id'] as DocumentReference?;
    _rating = castToType<int>(snapshotData['rating']);
    _reviewText = snapshotData['review_text'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviews');

  static Stream<ReviewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewsRecord.fromSnapshot(s));

  static Future<ReviewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewsRecord.fromSnapshot(s));

  static ReviewsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewsRecordData({
  int? reviewId,
  int? userId,
  DocumentReference? garageId,
  int? rating,
  String? reviewText,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'review_id': reviewId,
      'user_id': userId,
      'garage_id': garageId,
      'rating': rating,
      'review_text': reviewText,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewsRecordDocumentEquality implements Equality<ReviewsRecord> {
  const ReviewsRecordDocumentEquality();

  @override
  bool equals(ReviewsRecord? e1, ReviewsRecord? e2) {
    return e1?.reviewId == e2?.reviewId &&
        e1?.userId == e2?.userId &&
        e1?.garageId == e2?.garageId &&
        e1?.rating == e2?.rating &&
        e1?.reviewText == e2?.reviewText;
  }

  @override
  int hash(ReviewsRecord? e) => const ListEquality()
      .hash([e?.reviewId, e?.userId, e?.garageId, e?.rating, e?.reviewText]);

  @override
  bool isValidKey(Object? o) => o is ReviewsRecord;
}
