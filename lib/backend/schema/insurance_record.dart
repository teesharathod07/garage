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

  // "user_id" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "insurance_provider" field.
  String? _insuranceProvider;
  String get insuranceProvider => _insuranceProvider ?? '';
  bool hasInsuranceProvider() => _insuranceProvider != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "display_price" field.
  String? _displayPrice;
  String get displayPrice => _displayPrice ?? '';
  bool hasDisplayPrice() => _displayPrice != null;

  void _initializeFields() {
    _userId = snapshotData['user_id'] as DocumentReference?;
    _insuranceProvider = snapshotData['insurance_provider'] as String?;
    _title = snapshotData['title'] as String?;
    _desc = snapshotData['desc'] as String?;
    _displayPrice = snapshotData['display_price'] as String?;
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
  DocumentReference? userId,
  String? insuranceProvider,
  String? title,
  String? desc,
  String? displayPrice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_id': userId,
      'insurance_provider': insuranceProvider,
      'title': title,
      'desc': desc,
      'display_price': displayPrice,
    }.withoutNulls,
  );

  return firestoreData;
}

class InsuranceRecordDocumentEquality implements Equality<InsuranceRecord> {
  const InsuranceRecordDocumentEquality();

  @override
  bool equals(InsuranceRecord? e1, InsuranceRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.insuranceProvider == e2?.insuranceProvider &&
        e1?.title == e2?.title &&
        e1?.desc == e2?.desc &&
        e1?.displayPrice == e2?.displayPrice;
  }

  @override
  int hash(InsuranceRecord? e) => const ListEquality().hash(
      [e?.userId, e?.insuranceProvider, e?.title, e?.desc, e?.displayPrice]);

  @override
  bool isValidKey(Object? o) => o is InsuranceRecord;
}
