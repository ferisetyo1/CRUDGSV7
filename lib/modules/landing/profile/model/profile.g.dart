// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      photo: json['photo'] as String?,
      deleteAccountReason: json['delete_account_reason'] as String?,
      identityPhoto: json['identity_photo'] as String?,
      verificationStatus: json['verification_status'] as String?,
      isFreePassword: json['is_free_password'] as bool?,
      lang: json['lang'] as String?,
      rejectedReason: json['rejected_reason'] as String?,
      userAppleId: json['user_apple_id'],
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'photo': instance.photo,
      'delete_account_reason': instance.deleteAccountReason,
      'identity_photo': instance.identityPhoto,
      'verification_status': instance.verificationStatus,
      'is_free_password': instance.isFreePassword,
      'lang': instance.lang,
      'rejected_reason': instance.rejectedReason,
      'user_apple_id': instance.userAppleId,
    };
