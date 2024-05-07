// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'income_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IncomeDataImpl _$$IncomeDataImplFromJson(Map<String, dynamic> json) =>
    _$IncomeDataImpl(
      date: json['date'] as String?,
      value: (json['value'] as List<dynamic>?)
          ?.map((e) => OrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$IncomeDataImplToJson(_$IncomeDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'value': instance.value,
    };
