// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assessment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssessmentState {
  List<Assessment> get recentAssessments => throw _privateConstructorUsedError;
  List<ApplicableMeasures> get applicableMeasures =>
      throw _privateConstructorUsedError;
  List<CognitiveStatus> get cognitiveStatuses =>
      throw _privateConstructorUsedError;
  List<Patient> get patients => throw _privateConstructorUsedError;
  String? get cognitiveStatus => throw _privateConstructorUsedError;
  String? get measures => throw _privateConstructorUsedError;
  String? get patientName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AssessmentStateCopyWith<AssessmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentStateCopyWith<$Res> {
  factory $AssessmentStateCopyWith(
          AssessmentState value, $Res Function(AssessmentState) then) =
      _$AssessmentStateCopyWithImpl<$Res, AssessmentState>;
  @useResult
  $Res call(
      {List<Assessment> recentAssessments,
      List<ApplicableMeasures> applicableMeasures,
      List<CognitiveStatus> cognitiveStatuses,
      List<Patient> patients,
      String? cognitiveStatus,
      String? measures,
      String? patientName});
}

/// @nodoc
class _$AssessmentStateCopyWithImpl<$Res, $Val extends AssessmentState>
    implements $AssessmentStateCopyWith<$Res> {
  _$AssessmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentAssessments = null,
    Object? applicableMeasures = null,
    Object? cognitiveStatuses = null,
    Object? patients = null,
    Object? cognitiveStatus = freezed,
    Object? measures = freezed,
    Object? patientName = freezed,
  }) {
    return _then(_value.copyWith(
      recentAssessments: null == recentAssessments
          ? _value.recentAssessments
          : recentAssessments // ignore: cast_nullable_to_non_nullable
              as List<Assessment>,
      applicableMeasures: null == applicableMeasures
          ? _value.applicableMeasures
          : applicableMeasures // ignore: cast_nullable_to_non_nullable
              as List<ApplicableMeasures>,
      cognitiveStatuses: null == cognitiveStatuses
          ? _value.cognitiveStatuses
          : cognitiveStatuses // ignore: cast_nullable_to_non_nullable
              as List<CognitiveStatus>,
      patients: null == patients
          ? _value.patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      cognitiveStatus: freezed == cognitiveStatus
          ? _value.cognitiveStatus
          : cognitiveStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      measures: freezed == measures
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as String?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssessmentStateImplCopyWith<$Res>
    implements $AssessmentStateCopyWith<$Res> {
  factory _$$AssessmentStateImplCopyWith(_$AssessmentStateImpl value,
          $Res Function(_$AssessmentStateImpl) then) =
      __$$AssessmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Assessment> recentAssessments,
      List<ApplicableMeasures> applicableMeasures,
      List<CognitiveStatus> cognitiveStatuses,
      List<Patient> patients,
      String? cognitiveStatus,
      String? measures,
      String? patientName});
}

/// @nodoc
class __$$AssessmentStateImplCopyWithImpl<$Res>
    extends _$AssessmentStateCopyWithImpl<$Res, _$AssessmentStateImpl>
    implements _$$AssessmentStateImplCopyWith<$Res> {
  __$$AssessmentStateImplCopyWithImpl(
      _$AssessmentStateImpl _value, $Res Function(_$AssessmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recentAssessments = null,
    Object? applicableMeasures = null,
    Object? cognitiveStatuses = null,
    Object? patients = null,
    Object? cognitiveStatus = freezed,
    Object? measures = freezed,
    Object? patientName = freezed,
  }) {
    return _then(_$AssessmentStateImpl(
      recentAssessments: null == recentAssessments
          ? _value._recentAssessments
          : recentAssessments // ignore: cast_nullable_to_non_nullable
              as List<Assessment>,
      applicableMeasures: null == applicableMeasures
          ? _value._applicableMeasures
          : applicableMeasures // ignore: cast_nullable_to_non_nullable
              as List<ApplicableMeasures>,
      cognitiveStatuses: null == cognitiveStatuses
          ? _value._cognitiveStatuses
          : cognitiveStatuses // ignore: cast_nullable_to_non_nullable
              as List<CognitiveStatus>,
      patients: null == patients
          ? _value._patients
          : patients // ignore: cast_nullable_to_non_nullable
              as List<Patient>,
      cognitiveStatus: freezed == cognitiveStatus
          ? _value.cognitiveStatus
          : cognitiveStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      measures: freezed == measures
          ? _value.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as String?,
      patientName: freezed == patientName
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AssessmentStateImpl extends _AssessmentState {
  const _$AssessmentStateImpl(
      {final List<Assessment> recentAssessments = const [],
      final List<ApplicableMeasures> applicableMeasures = const [],
      final List<CognitiveStatus> cognitiveStatuses = const [],
      final List<Patient> patients = const [],
      this.cognitiveStatus,
      this.measures,
      this.patientName})
      : _recentAssessments = recentAssessments,
        _applicableMeasures = applicableMeasures,
        _cognitiveStatuses = cognitiveStatuses,
        _patients = patients,
        super._();

  final List<Assessment> _recentAssessments;
  @override
  @JsonKey()
  List<Assessment> get recentAssessments {
    if (_recentAssessments is EqualUnmodifiableListView)
      return _recentAssessments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recentAssessments);
  }

  final List<ApplicableMeasures> _applicableMeasures;
  @override
  @JsonKey()
  List<ApplicableMeasures> get applicableMeasures {
    if (_applicableMeasures is EqualUnmodifiableListView)
      return _applicableMeasures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_applicableMeasures);
  }

  final List<CognitiveStatus> _cognitiveStatuses;
  @override
  @JsonKey()
  List<CognitiveStatus> get cognitiveStatuses {
    if (_cognitiveStatuses is EqualUnmodifiableListView)
      return _cognitiveStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cognitiveStatuses);
  }

  final List<Patient> _patients;
  @override
  @JsonKey()
  List<Patient> get patients {
    if (_patients is EqualUnmodifiableListView) return _patients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_patients);
  }

  @override
  final String? cognitiveStatus;
  @override
  final String? measures;
  @override
  final String? patientName;

  @override
  String toString() {
    return 'AssessmentState(recentAssessments: $recentAssessments, applicableMeasures: $applicableMeasures, cognitiveStatuses: $cognitiveStatuses, patients: $patients, cognitiveStatus: $cognitiveStatus, measures: $measures, patientName: $patientName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssessmentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._recentAssessments, _recentAssessments) &&
            const DeepCollectionEquality()
                .equals(other._applicableMeasures, _applicableMeasures) &&
            const DeepCollectionEquality()
                .equals(other._cognitiveStatuses, _cognitiveStatuses) &&
            const DeepCollectionEquality().equals(other._patients, _patients) &&
            (identical(other.cognitiveStatus, cognitiveStatus) ||
                other.cognitiveStatus == cognitiveStatus) &&
            (identical(other.measures, measures) ||
                other.measures == measures) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recentAssessments),
      const DeepCollectionEquality().hash(_applicableMeasures),
      const DeepCollectionEquality().hash(_cognitiveStatuses),
      const DeepCollectionEquality().hash(_patients),
      cognitiveStatus,
      measures,
      patientName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssessmentStateImplCopyWith<_$AssessmentStateImpl> get copyWith =>
      __$$AssessmentStateImplCopyWithImpl<_$AssessmentStateImpl>(
          this, _$identity);
}

abstract class _AssessmentState extends AssessmentState {
  const factory _AssessmentState(
      {final List<Assessment> recentAssessments,
      final List<ApplicableMeasures> applicableMeasures,
      final List<CognitiveStatus> cognitiveStatuses,
      final List<Patient> patients,
      final String? cognitiveStatus,
      final String? measures,
      final String? patientName}) = _$AssessmentStateImpl;
  const _AssessmentState._() : super._();

  @override
  List<Assessment> get recentAssessments;
  @override
  List<ApplicableMeasures> get applicableMeasures;
  @override
  List<CognitiveStatus> get cognitiveStatuses;
  @override
  List<Patient> get patients;
  @override
  String? get cognitiveStatus;
  @override
  String? get measures;
  @override
  String? get patientName;
  @override
  @JsonKey(ignore: true)
  _$$AssessmentStateImplCopyWith<_$AssessmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
