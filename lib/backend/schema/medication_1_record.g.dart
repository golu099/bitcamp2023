// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_1_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Medication1Record> _$medication1RecordSerializer =
    new _$Medication1RecordSerializer();

class _$Medication1RecordSerializer
    implements StructuredSerializer<Medication1Record> {
  @override
  final Iterable<Type> types = const [Medication1Record, _$Medication1Record];
  @override
  final String wireName = 'Medication1Record';

  @override
  Iterable<Object?> serialize(Serializers serializers, Medication1Record object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.medicationName;
    if (value != null) {
      result
        ..add('medication_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dosage;
    if (value != null) {
      result
        ..add('dosage')
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
  Medication1Record deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new Medication1RecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'medication_name':
          result.medicationName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dosage':
          result.dosage = serializers.deserialize(value,
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

class _$Medication1Record extends Medication1Record {
  @override
  final String? medicationName;
  @override
  final String? dosage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$Medication1Record(
          [void Function(Medication1RecordBuilder)? updates]) =>
      (new Medication1RecordBuilder()..update(updates))._build();

  _$Medication1Record._({this.medicationName, this.dosage, this.ffRef})
      : super._();

  @override
  Medication1Record rebuild(void Function(Medication1RecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Medication1RecordBuilder toBuilder() =>
      new Medication1RecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Medication1Record &&
        medicationName == other.medicationName &&
        dosage == other.dosage &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, medicationName.hashCode);
    _$hash = $jc(_$hash, dosage.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Medication1Record')
          ..add('medicationName', medicationName)
          ..add('dosage', dosage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class Medication1RecordBuilder
    implements Builder<Medication1Record, Medication1RecordBuilder> {
  _$Medication1Record? _$v;

  String? _medicationName;
  String? get medicationName => _$this._medicationName;
  set medicationName(String? medicationName) =>
      _$this._medicationName = medicationName;

  String? _dosage;
  String? get dosage => _$this._dosage;
  set dosage(String? dosage) => _$this._dosage = dosage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  Medication1RecordBuilder() {
    Medication1Record._initializeBuilder(this);
  }

  Medication1RecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _medicationName = $v.medicationName;
      _dosage = $v.dosage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Medication1Record other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Medication1Record;
  }

  @override
  void update(void Function(Medication1RecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Medication1Record build() => _build();

  _$Medication1Record _build() {
    final _$result = _$v ??
        new _$Medication1Record._(
            medicationName: medicationName, dosage: dosage, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
