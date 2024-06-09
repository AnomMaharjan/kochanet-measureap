// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assessment_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AssessmentImpl _$$AssessmentImplFromJson(Map<String, dynamic> json) =>
    _$AssessmentImpl(
      cognitiveStatus: json['cognitiveStatus'] as String? ?? '',
      measures: json['measures'] as String? ?? '',
      patientName: json['patientName'] as String? ?? '',
    );

Map<String, dynamic> _$$AssessmentImplToJson(_$AssessmentImpl instance) =>
    <String, dynamic>{
      'cognitiveStatus': instance.cognitiveStatus,
      'measures': instance.measures,
      'patientName': instance.patientName,
    };
