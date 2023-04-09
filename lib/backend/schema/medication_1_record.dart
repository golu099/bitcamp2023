import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'medication_1_record.g.dart';

abstract class Medication1Record
    implements Built<Medication1Record, Medication1RecordBuilder> {
  static Serializer<Medication1Record> get serializer =>
      _$medication1RecordSerializer;

  @BuiltValueField(wireName: 'medication_name')
  String? get medicationName;

  String? get dosage;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(Medication1RecordBuilder builder) => builder
    ..medicationName = ''
    ..dosage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medication-1');

  static Stream<Medication1Record> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<Medication1Record> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  Medication1Record._();
  factory Medication1Record([void Function(Medication1RecordBuilder) updates]) =
      _$Medication1Record;

  static Medication1Record getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMedication1RecordData({
  String? medicationName,
  String? dosage,
}) {
  final firestoreData = serializers.toFirestore(
    Medication1Record.serializer,
    Medication1Record(
      (m) => m
        ..medicationName = medicationName
        ..dosage = dosage,
    ),
  );

  return firestoreData;
}
