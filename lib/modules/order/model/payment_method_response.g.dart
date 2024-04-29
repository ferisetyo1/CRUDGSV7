// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentMethodResponseImpl _$$PaymentMethodResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentMethodResponseImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      channels: (json['channels'] as List<dynamic>?)
          ?.map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PaymentMethodResponseImplToJson(
        _$PaymentMethodResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'channels': instance.channels,
    };

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      paymentType: json['payment_type'] as String?,
      bankNumber: json['bank_number'] as String?,
      accountHolderName: json['account_holder_name'] as String?,
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'payment_type': instance.paymentType,
      'bank_number': instance.bankNumber,
      'account_holder_name': instance.accountHolderName,
    };
