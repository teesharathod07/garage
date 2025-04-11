import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AppsettingsRecord extends FirestoreRecord {
  AppsettingsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "admin" field.
  List<String>? _admin;
  List<String> get admin => _admin ?? const [];
  bool hasAdmin() => _admin != null;

  void _initializeFields() {
    _admin = getDataList(snapshotData['admin']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('appsettings');

  static Stream<AppsettingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AppsettingsRecord.fromSnapshot(s));

  static Future<AppsettingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AppsettingsRecord.fromSnapshot(s));

  static AppsettingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AppsettingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AppsettingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AppsettingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AppsettingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AppsettingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAppsettingsRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class AppsettingsRecordDocumentEquality implements Equality<AppsettingsRecord> {
  const AppsettingsRecordDocumentEquality();

  @override
  bool equals(AppsettingsRecord? e1, AppsettingsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.admin, e2?.admin);
  }

  @override
  int hash(AppsettingsRecord? e) => const ListEquality().hash([e?.admin]);

  @override
  bool isValidKey(Object? o) => o is AppsettingsRecord;
}
