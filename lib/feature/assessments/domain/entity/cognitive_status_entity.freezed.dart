// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cognitive_status_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CognitiveStatus _$CognitiveStatusFromJson(Map<String, dynamic> json) {
  return _CognitiveStatus.fromJson(json);
}

/// @nodoc
mixin _$CognitiveStatus {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CognitiveStatusCopyWith<CognitiveStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CognitiveStatusCopyWith<$Res> {
  factory $CognitiveStatusCopyWith(
          CognitiveStatus value, $Res Function(CognitiveStatus) then) =
      _$CognitiveStatusCopyWithImpl<$Res, CognitiveStatus>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$CognitiveStatusCopyWithImpl<$Res, $Val extends CognitiveStatus>
    implements $CognitiveStatusCopyWith<$Res> {
  _$CognitiveStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CognitiveStatusImplCopyWith<$Res>
    implements $CognitiveStatusCopyWith<$Res> {
  factory _$$CognitiveStatusImplCopyWith(_$CognitiveStatusImpl value,
          $Res Function(_$CognitiveStatusImpl) then) =
      __$$CognitiveStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$CognitiveStatusImplCopyWithImpl<$Res>
    extends _$CognitiveStatusCopyWithImpl<$Res, _$CognitiveStatusImpl>
    implements _$$CognitiveStatusImplCopyWith<$Res> {
  __$$CognitiveStatusImplCopyWithImpl(
      _$CognitiveStatusImpl _value, $Res Function(_$CognitiveStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$CognitiveStatusImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CognitiveStatusImpl implements _CognitiveStatus {
  const _$CognitiveStatusImpl({this.id = '', this.name = ''});

  factory _$CognitiveStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$CognitiveStatusImplFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'CognitiveStatus(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CognitiveStatusImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CognitiveStatusImplCopyWith<_$CognitiveStatusImpl> get copyWith =>
      __$$CognitiveStatusImplCopyWithImpl<_$CognitiveStatusImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CognitiveStatusImplToJson(
      this,
    );
  }
}

abstract class _CognitiveStatus implements CognitiveStatus {
  const factory _CognitiveStatus({final String id, final String name}) =
      _$CognitiveStatusImpl;

  factory _CognitiveStatus.fromJson(Map<String, dynamic> json) =
      _$CognitiveStatusImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CognitiveStatusImplCopyWith<_$CognitiveStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
