import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicable_measures_entity.freezed.dart';

part 'applicable_measures_entity.g.dart';

@freezed
abstract class ApplicableMeasures with _$ApplicableMeasures {
  const factory ApplicableMeasures({
    @Default('') String id,
    @Default('') String name,
    @Default('') String cognitiveStatusId,
    }) = _ApplicableMeasures;

  factory ApplicableMeasures.fromJson(Map<String, dynamic> json) =>
      _$ApplicableMeasuresFromJson(json);
}
