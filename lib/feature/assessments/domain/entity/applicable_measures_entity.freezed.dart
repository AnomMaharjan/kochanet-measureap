// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applicable_measures_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplicableMeasures _$ApplicableMeasuresFromJson(Map<String, dynamic> json) {
  return _ApplicableMeasures.fromJson(json);
}

/// @nodoc
mixin _$ApplicableMeasures {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cognitiveStatusId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicableMeasuresCopyWith<ApplicableMeasures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicableMeasuresCopyWith<$Res> {
  factory $ApplicableMeasuresCopyWith(
          ApplicableMeasures value, $Res Function(ApplicableMeasures) then) =
      _$ApplicableMeasuresCopyWithImpl<$Res, ApplicableMeasures>;
  @useResult
  $Res call({String id, String name, String cognitiveStatusId});
}

/// @nodoc
class _$ApplicableMeasuresCopyWithImpl<$Res, $Val extends ApplicableMeasures>
    implements $ApplicableMeasuresCopyWith<$Res> {
  _$ApplicableMeasuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cognitiveStatusId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cognitiveStatusId: null == cognitiveStatusId
          ? _value.cognitiveStatusId
          : cognitiveStatusId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicableMeasuresImplCopyWith<$Res>
    implements $ApplicableMeasuresCopyWith<$Res> {
  factory _$$ApplicableMeasuresImplCopyWith(_$ApplicableMeasuresImpl value,
          $Res Function(_$ApplicableMeasuresImpl) then) =
      __$$ApplicableMeasuresImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String cognitiveStatusId});
}

/// @nodoc
class __$$ApplicableMeasuresImplCopyWithImpl<$Res>
    extends _$ApplicableMeasuresCopyWithImpl<$Res, _$ApplicableMeasuresImpl>
    implements _$$ApplicableMeasuresImplCopyWith<$Res> {
  __$$ApplicableMeasuresImplCopyWithImpl(_$ApplicableMeasuresImpl _value,
      $Res Function(_$ApplicableMeasuresImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? cognitiveStatusId = null,
  }) {
    return _then(_$ApplicableMeasuresImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cognitiveStatusId: null == cognitiveStatusId
          ? _value.cognitiveStatusId
          : cognitiveStatusId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApplicableMeasuresImpl implements _ApplicableMeasures {
  const _$ApplicableMeasuresImpl(
      {this.id = '', this.name = '', this.cognitiveStatusId = ''});

  factory _$ApplicableMeasuresImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicableMeasuresImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String cognitiveStatusId;

  @override
  String toString() {
    return 'ApplicableMeasures(id: $id, name: $name, cognitiveStatusId: $cognitiveStatusId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicableMeasuresImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cognitiveStatusId, cognitiveStatusId) ||
                other.cognitiveStatusId == cognitiveStatusId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, cognitiveStatusId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicableMeasuresImplCopyWith<_$ApplicableMeasuresImpl> get copyWith =>
      __$$ApplicableMeasuresImplCopyWithImpl<_$ApplicableMeasuresImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicableMeasuresImplToJson(
      this,
    );
  }
}

abstract class _ApplicableMeasures implements ApplicableMeasures {
  const factory _ApplicableMeasures(
      {final String id,
      final String name,
      final String cognitiveStatusId}) = _$ApplicableMeasuresImpl;

  factory _ApplicableMeasures.fromJson(Map<String, dynamic> json) =
      _$ApplicableMeasuresImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get cognitiveStatusId;
  @override
  @JsonKey(ignore: true)
  _$$ApplicableMeasuresImplCopyWith<_$ApplicableMeasuresImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
