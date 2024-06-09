// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Assessment _$AssessmentFromJson(Map<String, dynamic> json) {
  return _Assessment.fromJson(json);
}

/// @nodoc
mixin _$Assessment {
  String get cognitiveStatus => throw _privateConstructorUsedError;
  String get measures => throw _privateConstructorUsedError;
  String get patientName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentCopyWith<Assessment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentCopyWith<$Res> {
  factory $AssessmentCopyWith(
          Assessment value, $Res Function(Assessment) then) =
      _$AssessmentCopyWithImpl<$Res, Assessment>;
  @useResult
  $Res call({String cognitiveStatus, String measures, String patientName});
}

/// @nodoc
class _$AssessmentCopyWithImpl<$Res, $Val extends Assessment>
    implements $AssessmentCopyWith<$Res> {
  _$AssessmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cognitiveStatus = null,
    Object? measures = null,
    Object? patientName = null,
  }) {
    return _then(_value.copyWith(
      cognitiveStatus: null == cognitiveStatus
          ? _value.cognitiveStatus
          : cognitiveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      measures: null == measures
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentImplCopyWith<$Res>
    implements $AssessmentCopyWith<$Res> {
  factory _$$AssessmentImplCopyWith(
          _$AssessmentImpl value, $Res Function(_$AssessmentImpl) then) =
      __$$AssessmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cognitiveStatus, String measures, String patientName});
}

/// @nodoc
class __$$AssessmentImplCopyWithImpl<$Res>
    extends _$AssessmentCopyWithImpl<$Res, _$AssessmentImpl>
    implements _$$AssessmentImplCopyWith<$Res> {
  __$$AssessmentImplCopyWithImpl(
      _$AssessmentImpl _value, $Res Function(_$AssessmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cognitiveStatus = null,
    Object? measures = null,
    Object? patientName = null,
  }) {
    return _then(_$AssessmentImpl(
      cognitiveStatus: null == cognitiveStatus
          ? _value.cognitiveStatus
          : cognitiveStatus // ignore: cast_nullable_to_non_nullable
              as String,
      measures: null == measures
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as String,
      patientName: null == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssessmentImpl implements _Assessment {
  const _$AssessmentImpl(
      {this.cognitiveStatus = '', this.measures = '', this.patientName = ''});

  factory _$AssessmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssessmentImplFromJson(json);

  @override
  @JsonKey()
  final String cognitiveStatus;
  @override
  @JsonKey()
  final String measures;
  @override
  @JsonKey()
  final String patientName;

  @override
  String toString() {
    return 'Assessment(cognitiveStatus: $cognitiveStatus, measures: $measures, patientName: $patientName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentImpl &&
            (identical(other.cognitiveStatus, cognitiveStatus) ||
                other.cognitiveStatus == cognitiveStatus) &&
            (identical(other.measures, measures) ||
                other.measures == measures) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, cognitiveStatus, measures, patientName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentImplCopyWith<_$AssessmentImpl> get copyWith =>
      __$$AssessmentImplCopyWithImpl<_$AssessmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssessmentImplToJson(
      this,
    );
  }
}

abstract class _Assessment implements Assessment {
  const factory _Assessment(
      {final String cognitiveStatus,
      final String measures,
      final String patientName}) = _$AssessmentImpl;

  factory _Assessment.fromJson(Map<String, dynamic> json) =
      _$AssessmentImpl.fromJson;

  @override
  String get cognitiveStatus;
  @override
  String get measures;
  @override
  String get patientName;
  @override
  @JsonKey(ignore: true)
  _$$AssessmentImplCopyWith<_$AssessmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
