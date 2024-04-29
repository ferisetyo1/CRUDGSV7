// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AboutResponseImpl _$$AboutResponseImplFromJson(Map<String, dynamic> json) =>
    _$AboutResponseImpl(
      id: json['id'] as int?,
      type: json['type'] as String?,
      content: json['content'] as String?,
      lang: json['lang'] as String?,
      appId: json['app_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$AboutResponseImplToJson(_$AboutResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'content': instance.content,
      'lang': instance.lang,
      'app_id': instance.appId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
