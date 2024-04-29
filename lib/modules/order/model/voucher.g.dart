// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoucherImpl _$$VoucherImplFromJson(Map<String, dynamic> json) =>
    _$VoucherImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      amount: json['amount'] as int?,
      percent: json['percent'],
      photo: json['photo'] as String?,
      type: json['type'] as String?,
      termAndConditionId: json['term_and_condition_id'],
      quota: json['quota'],
    );

Map<String, dynamic> _$$VoucherImplToJson(_$VoucherImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'amount': instance.amount,
      'percent': instance.percent,
      'photo': instance.photo,
      'type': instance.type,
      'term_and_condition_id': instance.termAndConditionId,
      'quota': instance.quota,
    };
