// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orang_tua_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrangTuaResponseImpl _$$OrangTuaResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OrangTuaResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      gender: json['gender'],
      email: json['email'] as String?,
      phoneNumber: json['phone_number'],
      photo: json['photo'],
      nik: json['nik'],
      address: json['address'],
      birthdate: json['birthdate'],
      identityPhoto: json['identity_photo'],
      verificationStatus: json['verification_status'] as String?,
      daycare: json['daycare'] == null
          ? null
          : Daycare.fromJson(json['daycare'] as Map<String, dynamic>),
      childrens: (json['childrens'] as List<dynamic>?)
          ?.map((e) => Children.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrangTuaResponseImplToJson(
        _$OrangTuaResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'gender': instance.gender,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'photo': instance.photo,
      'nik': instance.nik,
      'address': instance.address,
      'birthdate': instance.birthdate,
      'identity_photo': instance.identityPhoto,
      'verification_status': instance.verificationStatus,
      'daycare': instance.daycare?.toJson(),
      'childrens': instance.childrens?.map((e) => e.toJson()).toList(),
    };

_$DaycareImpl _$$DaycareImplFromJson(Map<String, dynamic> json) =>
    _$DaycareImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      address: json['address'] as String?,
    );

Map<String, dynamic> _$$DaycareImplToJson(_$DaycareImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
    };

_$ChildrenImpl _$$ChildrenImplFromJson(Map<String, dynamic> json) =>
    _$ChildrenImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      nik: json['nik'] as String?,
      gender: json['gender'] as String?,
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      parentId: json['parentId'] as String?,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$$ChildrenImplToJson(_$ChildrenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nik': instance.nik,
      'gender': instance.gender,
      'birthDate': instance.birthDate?.toIso8601String(),
      'parentId': instance.parentId,
      'photo': instance.photo,
    };
