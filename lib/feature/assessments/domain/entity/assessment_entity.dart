import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_entity.freezed.dart';

part 'assessment_entity.g.dart';

@freezed
abstract class Assessment with _$Assessment {
  const factory Assessment({
    @Default('') String cognitiveStatus,
    @Default('') String measures,
    @Default('') String patientName,
  }) = _Assessment;

  factory Assessment.fromJson(Map<String, dynamic> json) =>
      _$AssessmentFromJson(json);


}
