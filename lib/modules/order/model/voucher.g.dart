// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoucherImpl _$$VoucherImplFromJson(Map<String, dynamic> json) =>
    _$VoucherImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      amount: (json['amount'] as num?)?.toInt(),
      percent: json['percent'],
      photo: json['photo'] as String?,
      type: json['type'] as String?,
      termAndConditionId: json['term_and_condition_id'],
      quota: json['quota'],
      maximumUser: (json['maximum_user'] as num?)?.toInt(),
      maximumDiscount: (json['maximum_discount'] as num?)?.toInt(),
      manimumPrice: (json['manimum_price'] as num?)?.toInt(),
      maximumPrice: (json['maximum_price'] as num?)?.toInt(),
      code: json['code'] as String?,
      isNewUser: json['is_new_user'] as bool?,
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
      'maximum_user': instance.maximumUser,
      'maximum_discount': instance.maximumDiscount,
      'manimum_price': instance.manimumPrice,
      'maximum_price': instance.maximumPrice,
      'code': instance.code,
      'is_new_user': instance.isNewUser,
    };
