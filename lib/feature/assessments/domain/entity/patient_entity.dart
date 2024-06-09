import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_entity.freezed.dart';

part 'patient_entity.g.dart';

@freezed
abstract class Patient with _$Patient {
  const factory Patient({
    @Default('') String id,
    @Default('') String name,
    @Default('') String gender,
    @Default('') String address,
    @Default('') String phoneNumber,
    @Default('') String age,
    @Default('') String applicableMeasureId,
  }) = _Patient;

  factory Patient.fromJson(Map<String, dynamic> json) =>
      _$PatientFromJson(json);
}
