// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildrenResponseImpl _$$ChildrenResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildrenResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      nik: json['nik'] as String?,
      name: json['name'] as String?,
      gender: json['gender'],
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      photo: json['photo'] as String?,
      isEnableOrder: json['is_enable_order'] as bool?,
      age: (json['age'] as num?)?.toInt(),
      ageString: json['age_string'] as String?,
      parent: json['parent'] == null
          ? null
          : Parent.fromJson(json['parent'] as Map<String, dynamic>),
      parentId: json['parent_id'],
    );

Map<String, dynamic> _$$ChildrenResponseImplToJson(
        _$ChildrenResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nik': instance.nik,
      'name': instance.name,
      'gender': instance.gender,
      'birth_date': instance.birthDate?.toIso8601String(),
      'photo': instance.photo,
      'is_enable_order': instance.isEnableOrder,
      'age': instance.age,
      'age_string': instance.ageString,
      'parent': instance.parent?.toJson(),
      'parent_id': instance.parentId,
    };

_$ParentImpl _$$ParentImplFromJson(Map<String, dynamic> json) => _$ParentImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      photo: json['photo'] as String?,
      address: json['address'],
      deleteAccountReason: json['delete_account_reason'],
      verificationStatus: json['verification_status'] as String?,
      isFreePassword: json['is_free_password'] as bool?,
      lang: json['lang'] as String?,
      rejectedReason: json['rejected_reason'],
      userAppleId: json['user_apple_id'],
    );

Map<String, dynamic> _$$ParentImplToJson(_$ParentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'photo': instance.photo,
      'address': instance.address,
      'delete_account_reason': instance.deleteAccountReason,
      'verification_status': instance.verificationStatus,
      'is_free_password': instance.isFreePassword,
      'lang': instance.lang,
      'rejected_reason': instance.rejectedReason,
      'user_apple_id': instance.userAppleId,
    };
