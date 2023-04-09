import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'patients_record.g.dart';

abstract class PatientsRecord
    implements Built<PatientsRecord, PatientsRecordBuilder> {
  static Serializer<PatientsRecord> get serializer =>
      _$patientsRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get email;

  String? get username;

  String? get bio;

  bool? get isFollowed;

  int? get age;

  @BuiltValueField(wireName: 'phone_number')
  int? get phoneNumber;

  @BuiltValueField(wireName: 'EmergencyContact')
  int? get emergencyContact;

  int? get uid;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PatientsRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..username = ''
    ..bio = ''
    ..isFollowed = false
    ..age = 0
    ..phoneNumber = 0
    ..emergencyContact = 0
    ..uid = 0
    ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('patients');

  static Stream<PatientsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PatientsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PatientsRecord._();
  factory PatientsRecord([void Function(PatientsRecordBuilder) updates]) =
      _$PatientsRecord;

  static PatientsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPatientsRecordData({
  String? displayName,
  String? email,
  String? username,
  String? bio,
  bool? isFollowed,
  int? age,
  int? phoneNumber,
  int? emergencyContact,
  int? uid,
  String? photoUrl,
}) {
  final firestoreData = serializers.toFirestore(
    PatientsRecord.serializer,
    PatientsRecord(
      (p) => p
        ..displayName = displayName
        ..email = email
        ..username = username
        ..bio = bio
        ..isFollowed = isFollowed
        ..age = age
        ..phoneNumber = phoneNumber
        ..emergencyContact = emergencyContact
        ..uid = uid
        ..photoUrl = photoUrl,
    ),
  );

  return firestoreData;
}
