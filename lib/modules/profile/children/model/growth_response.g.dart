// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'growth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GrowthResponseImpl _$$GrowthResponseImplFromJson(Map<String, dynamic> json) =>
    _$GrowthResponseImpl(
      id: json['id'] as int?,
      age: json['age'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
      headCircumtance: json['head_circumtance'] as String?,
      type: json['type'] as String?,
      measureDate: json['measure_date'] == null
          ? null
          : DateTime.parse(json['measure_date'] as String),
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$GrowthResponseImplToJson(
        _$GrowthResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'age': instance.age,
      'height': instance.height,
      'weight': instance.weight,
      'head_circumtance': instance.headCircumtance,
      'type': instance.type,
      'measure_date': instance.measureDate?.toIso8601String(),
      'unit': instance.unit,
    };
