// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildrenResponseImpl _$$ChildrenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildrenResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      nik: json['nik'] as String?,
      name: json['name'] as String?,
      gender: json['gender'],
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      photo: json['photo'] as String?,
      isEnableOrder: json['is_enable_order'] as bool?,
      age: (json['age'] as num?)?.toInt(),
      ageString: json['age_string'] as String?,
    );

Map<String, dynamic> _$$ChildrenResponseImplToJson(
        _$ChildrenResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nik': instance.nik,
      'name': instance.name,
      'gender': instance.gender,
      'birth_date': instance.birthDate?.toIso8601String(),
      'photo': instance.photo,
      'is_enable_order': instance.isEnableOrder,
      'age': instance.age,
      'age_string': instance.ageString,
    };
