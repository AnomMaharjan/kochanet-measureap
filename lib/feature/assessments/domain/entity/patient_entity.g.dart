// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PatientImpl _$$PatientImplFromJson(Map<String, dynamic> json) =>
    _$PatientImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      gender: json['gender'] as String? ?? '',
      address: json['address'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      age: json['age'] as String? ?? '',
      applicableMeasureId: json['applicableMeasureId'] as String? ?? '',
    );

Map<String, dynamic> _$$PatientImplToJson(_$PatientImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'age': instance.age,
      'applicableMeasureId': instance.applicableMeasureId,
    };
