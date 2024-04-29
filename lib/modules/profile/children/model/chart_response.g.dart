// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChartResponseImpl _$$ChartResponseImplFromJson(Map<String, dynamic> json) =>
    _$ChartResponseImpl(
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => GrowthResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      idealGrowth: (json['ideal_growth'] as List<dynamic>?)
          ?.map((e) => GrowthResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChartResponseImplToJson(_$ChartResponseImpl instance) =>
    <String, dynamic>{
      'children': instance.children?.map((e) => e.toJson()).toList(),
      'ideal_growth': instance.idealGrowth?.map((e) => e.toJson()).toList(),
    };
