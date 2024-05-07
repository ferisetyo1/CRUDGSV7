// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_price_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailPriceResponseImpl _$$DetailPriceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailPriceResponseImpl(
      totalPrice: (json['total_price'] as num?)?.toInt(),
      detailPrice: (json['detail_price'] as List<dynamic>?)
          ?.map((e) => DetailPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherPrice: (json['other_price'] as List<dynamic>?)
          ?.map((e) => DetailPrice.fromJson(e as Map<String, dynamic>))
          .toList(),
      isUsePoint: json['is_use_point'] as bool?,
    );

Map<String, dynamic> _$$DetailPriceResponseImplToJson(
        _$DetailPriceResponseImpl instance) =>
    <String, dynamic>{
      'total_price': instance.totalPrice,
      'detail_price': instance.detailPrice?.map((e) => e.toJson()).toList(),
      'other_price': instance.otherPrice?.map((e) => e.toJson()).toList(),
      'is_use_point': instance.isUsePoint,
    };

_$DetailPriceImpl _$$DetailPriceImplFromJson(Map<String, dynamic> json) =>
    _$DetailPriceImpl(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      totalPrice: (json['total_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DetailPriceImplToJson(_$DetailPriceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
    };
