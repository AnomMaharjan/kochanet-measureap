part of 'assessment_cubit.dart';

@freezed
class AssessmentState with _$AssessmentState {
  const AssessmentState._();

  const factory AssessmentState({
    @Default([]) List<Assessment> recentAssessments,
    @Default([]) List<ApplicableMeasures> applicableMeasures,
    @Default([]) List<CognitiveStatus> cognitiveStatuses,
    @Default([]) List<Patient> patients,
    String? cognitiveStatus,
     String? measures,
    String? patientName,
  }) = _AssessmentState;
}
