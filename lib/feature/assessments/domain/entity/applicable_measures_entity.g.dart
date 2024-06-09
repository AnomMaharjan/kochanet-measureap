// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicable_measures_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicableMeasuresImpl _$$ApplicableMeasuresImplFromJson(
        Map<String, dynamic> json) =>
    _$ApplicableMeasuresImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      cognitiveStatusId: json['cognitiveStatusId'] as String? ?? '',
    );

Map<String, dynamic> _$$ApplicableMeasuresImplToJson(
        _$ApplicableMeasuresImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cognitiveStatusId': instance.cognitiveStatusId,
    };
