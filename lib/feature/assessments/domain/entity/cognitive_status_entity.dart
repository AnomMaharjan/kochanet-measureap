import 'package:freezed_annotation/freezed_annotation.dart';

part 'cognitive_status_entity.freezed.dart';

part 'cognitive_status_entity.g.dart';

@freezed
abstract class CognitiveStatus with _$CognitiveStatus {
  const factory CognitiveStatus({
    @Default('') String id,
    @Default('') String name,
    }) = _CognitiveStatus;

  factory CognitiveStatus.fromJson(Map<String, dynamic> json) =>
      _$CognitiveStatusFromJson(json);
}
