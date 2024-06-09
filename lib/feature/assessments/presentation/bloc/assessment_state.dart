part of 'assessment_cubit.dart';

@freezed
class AssessmentState with _$AssessmentState {
  const AssessmentState._();

  const factory AssessmentState({
    @Default([]) List<Assessment> recentAssessments,
    @Default([]) List<ApplicableMeasures> applicableMeasures,
    @Default([]) List<CognitiveStatus> cognitiveStatuses,
    @Default([]) List<Patient> patients,
    @Default('') String cognitiveStatus,
    @Default('') String measures,
    @Default('') String patientName,
  }) = _AssessmentState;
}
