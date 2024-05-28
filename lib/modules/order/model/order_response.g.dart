// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderResponseImpl _$$OrderResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrderResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      newPriceId: json['new_price_id'],
      type: json['type'],
      typeId: json['type_id'],
      startDate: json['start_date'] == null
          ? null
          : DateTime.parse(json['start_date'] as String),
      endDate: json['end_date'] == null
          ? null
          : DateTime.parse(json['end_date'] as String),
      specialRequest: json['special_request'] as String?,
      price: (json['price'] as num?)?.toInt(),
      discountAmount: (json['discount_amount'] as num?)?.toInt(),
      discountPercent: (json['discount_percent'] as num?)?.toInt(),
      voucherName: json['voucher_name'],
      totalDiscount: (json['total_discount'] as num?)?.toInt(),
      fee: (json['fee'] as num?)?.toInt(),
      bankFee: (json['bank_fee'] as num?)?.toInt(),
      totalPrice: (json['total_price'] as num?)?.toInt(),
      status: json['status'] as String?,
      statusRefund: json['status_refund'] as String?,
      invoiceNumber: json['invoice_number'] as String?,
      virtualAccountNumber: json['virtual_account_number'] as String?,
      qrUrl: json['qr_url'],
      deeplinkUrl: json['deeplink_url'],
      paymentAt: json['payment_at'] == null
          ? null
          : DateTime.parse(json['payment_at'] as String),
      expiredAt: json['expired_at'] == null
          ? null
          : DateTime.parse(json['expired_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      rejectedReason: json['rejected_reason'] as String?,
      rejectCategoryId: json['reject_category_id'],
      childrenItemDetails: (json['children_item_details'] as List<dynamic>?)
          ?.map((e) => ChildrenItemDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => OrderResponseItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentChannel: json['payment_channel'] == null
          ? null
          : PaymentChannel.fromJson(
              json['payment_channel'] as Map<String, dynamic>),
      parent: json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderResponseImplToJson(_$OrderResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'new_price_id': instance.newPriceId,
      'type': instance.type,
      'type_id': instance.typeId,
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'special_request': instance.specialRequest,
      'price': instance.price,
      'discount_amount': instance.discountAmount,
      'discount_percent': instance.discountPercent,
      'voucher_name': instance.voucherName,
      'total_discount': instance.totalDiscount,
      'fee': instance.fee,
      'bank_fee': instance.bankFee,
      'total_price': instance.totalPrice,
      'status': instance.status,
      'status_refund': instance.statusRefund,
      'invoice_number': instance.invoiceNumber,
      'virtual_account_number': instance.virtualAccountNumber,
      'qr_url': instance.qrUrl,
      'deeplink_url': instance.deeplinkUrl,
      'payment_at': instance.paymentAt?.toIso8601String(),
      'expired_at': instance.expiredAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'rejected_reason': instance.rejectedReason,
      'reject_category_id': instance.rejectCategoryId,
      'children_item_details':
          instance.childrenItemDetails?.map((e) => e.toJson()).toList(),
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'payment_channel': instance.paymentChannel?.toJson(),
      'parent': instance.parent?.toJson(),
    };

_$ChildrenItemDetailImpl _$$ChildrenItemDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildrenItemDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'],
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      age: (json['age'] as num?)?.toInt(),
      ageString: json['age_string'] as String?,
      programDetail: json['program_detail'] == null
          ? null
          : ProgramDetail.fromJson(
              json['program_detail'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map(
              (e) => ChildrenItemDetailItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChildrenItemDetailImplToJson(
        _$ChildrenItemDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'birth_date': instance.birthDate?.toIso8601String(),
      'age': instance.age,
      'age_string': instance.ageString,
      'program_detail': instance.programDetail?.toJson(),
      'items': instance.items?.map((e) => e.toJson()).toList(),
    };

_$ChildrenItemDetailItemImpl _$$ChildrenItemDetailItemImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildrenItemDetailItemImpl(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      totalPrice: (json['total_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChildrenItemDetailItemImplToJson(
        _$ChildrenItemDetailItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
    };

_$ProgramDetailImpl _$$ProgramDetailImplFromJson(Map<String, dynamic> json) =>
    _$ProgramDetailImpl(
      age: json['age'] as String?,
      program: json['program'] as String?,
    );

Map<String, dynamic> _$$ProgramDetailImplToJson(_$ProgramDetailImpl instance) =>
    <String, dynamic>{
      'age': instance.age,
      'program': instance.program,
    };

_$OrderResponseItemImpl _$$OrderResponseItemImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderResponseItemImpl(
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toInt(),
      quantity: (json['quantity'] as num?)?.toInt(),
      totalPrice: (json['total_price'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OrderResponseItemImplToJson(
        _$OrderResponseItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'quantity': instance.quantity,
      'total_price': instance.totalPrice,
    };

_$ParentImpl _$$ParentImplFromJson(Map<String, dynamic> json) => _$ParentImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      photo: json['photo'],
      nik: json['nik'],
      phoneNumber: json['phone_number'] as String?,
      gender: json['gender'] as String?,
      guardians: (json['guardians'] as List<dynamic>?)
          ?.map((e) => Guardian.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ParentImplToJson(_$ParentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'nik': instance.nik,
      'phone_number': instance.phoneNumber,
      'gender': instance.gender,
      'guardians': instance.guardians?.map((e) => e.toJson()).toList(),
    };

_$GuardianImpl _$$GuardianImplFromJson(Map<String, dynamic> json) =>
    _$GuardianImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      parentId: json['parent_id'] as String?,
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$GuardianImplToJson(_$GuardianImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parent_id': instance.parentId,
      'phone_number': instance.phoneNumber,
    };

_$PaymentChannelImpl _$$PaymentChannelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentChannelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
      paymentMethod: json['payment_method'] == null
          ? null
          : PaymentMethod.fromJson(
              json['payment_method'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentChannelImplToJson(
        _$PaymentChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'payment_method': instance.paymentMethod?.toJson(),
    };

_$PaymentMethodImpl _$$PaymentMethodImplFromJson(Map<String, dynamic> json) =>
    _$PaymentMethodImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PaymentMethodImplToJson(_$PaymentMethodImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
