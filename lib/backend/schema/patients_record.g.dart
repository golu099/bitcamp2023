// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patients_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PatientsRecord> _$patientsRecordSerializer =
    new _$PatientsRecordSerializer();

class _$PatientsRecordSerializer
    implements StructuredSerializer<PatientsRecord> {
  @override
  final Iterable<Type> types = const [PatientsRecord, _$PatientsRecord];
  @override
  final String wireName = 'PatientsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PatientsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFollowed;
    if (value != null) {
      result
        ..add('isFollowed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.emergencyContact;
    if (value != null) {
      result
        ..add('EmergencyContact')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PatientsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isFollowed':
          result.isFollowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'EmergencyContact':
          result.emergencyContact = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PatientsRecord extends PatientsRecord {
  @override
  final String? displayName;
  @override
  final String? email;
  @override
  final String? username;
  @override
  final String? bio;
  @override
  final bool? isFollowed;
  @override
  final int? age;
  @override
  final int? phoneNumber;
  @override
  final int? emergencyContact;
  @override
  final int? uid;
  @override
  final String? photoUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PatientsRecord([void Function(PatientsRecordBuilder)? updates]) =>
      (new PatientsRecordBuilder()..update(updates))._build();

  _$PatientsRecord._(
      {this.displayName,
      this.email,
      this.username,
      this.bio,
      this.isFollowed,
      this.age,
      this.phoneNumber,
      this.emergencyContact,
      this.uid,
      this.photoUrl,
      this.ffRef})
      : super._();

  @override
  PatientsRecord rebuild(void Function(PatientsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientsRecordBuilder toBuilder() =>
      new PatientsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientsRecord &&
        displayName == other.displayName &&
        email == other.email &&
        username == other.username &&
        bio == other.bio &&
        isFollowed == other.isFollowed &&
        age == other.age &&
        phoneNumber == other.phoneNumber &&
        emergencyContact == other.emergencyContact &&
        uid == other.uid &&
        photoUrl == other.photoUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, bio.hashCode);
    _$hash = $jc(_$hash, isFollowed.hashCode);
    _$hash = $jc(_$hash, age.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, emergencyContact.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientsRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('username', username)
          ..add('bio', bio)
          ..add('isFollowed', isFollowed)
          ..add('age', age)
          ..add('phoneNumber', phoneNumber)
          ..add('emergencyContact', emergencyContact)
          ..add('uid', uid)
          ..add('photoUrl', photoUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PatientsRecordBuilder
    implements Builder<PatientsRecord, PatientsRecordBuilder> {
  _$PatientsRecord? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  bool? _isFollowed;
  bool? get isFollowed => _$this._isFollowed;
  set isFollowed(bool? isFollowed) => _$this._isFollowed = isFollowed;

  int? _age;
  int? get age => _$this._age;
  set age(int? age) => _$this._age = age;

  int? _phoneNumber;
  int? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(int? phoneNumber) => _$this._phoneNumber = phoneNumber;

  int? _emergencyContact;
  int? get emergencyContact => _$this._emergencyContact;
  set emergencyContact(int? emergencyContact) =>
      _$this._emergencyContact = emergencyContact;

  int? _uid;
  int? get uid => _$this._uid;
  set uid(int? uid) => _$this._uid = uid;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PatientsRecordBuilder() {
    PatientsRecord._initializeBuilder(this);
  }

  PatientsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _username = $v.username;
      _bio = $v.bio;
      _isFollowed = $v.isFollowed;
      _age = $v.age;
      _phoneNumber = $v.phoneNumber;
      _emergencyContact = $v.emergencyContact;
      _uid = $v.uid;
      _photoUrl = $v.photoUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientsRecord;
  }

  @override
  void update(void Function(PatientsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientsRecord build() => _build();

  _$PatientsRecord _build() {
    final _$result = _$v ??
        new _$PatientsRecord._(
            displayName: displayName,
            email: email,
            username: username,
            bio: bio,
            isFollowed: isFollowed,
            age: age,
            phoneNumber: phoneNumber,
            emergencyContact: emergencyContact,
            uid: uid,
            photoUrl: photoUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
