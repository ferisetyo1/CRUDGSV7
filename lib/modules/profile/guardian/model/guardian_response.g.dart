// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guardian_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuardianResponseImpl _$$GuardianResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GuardianResponseImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      parentId: json['parent_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$GuardianResponseImplToJson(
        _$GuardianResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'parent_id': instance.parentId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'phone_number': instance.phoneNumber,
    };
