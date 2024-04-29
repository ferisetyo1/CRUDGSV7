// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guardian_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GuardianResponse _$GuardianResponseFromJson(Map<String, dynamic> json) {
  return _GuardianResponse.fromJson(json);
}

/// @nodoc
mixin _$GuardianResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuardianResponseCopyWith<GuardianResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuardianResponseCopyWith<$Res> {
  factory $GuardianResponseCopyWith(
          GuardianResponse value, $Res Function(GuardianResponse) then) =
      _$GuardianResponseCopyWithImpl<$Res, GuardianResponse>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? photo,
      String? parentId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? phoneNumber});
}

/// @nodoc
class _$GuardianResponseCopyWithImpl<$Res, $Val extends GuardianResponse>
    implements $GuardianResponseCopyWith<$Res> {
  _$GuardianResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? parentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuardianResponseImplCopyWith<$Res>
    implements $GuardianResponseCopyWith<$Res> {
  factory _$$GuardianResponseImplCopyWith(_$GuardianResponseImpl value,
          $Res Function(_$GuardianResponseImpl) then) =
      __$$GuardianResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? photo,
      String? parentId,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? phoneNumber});
}

/// @nodoc
class __$$GuardianResponseImplCopyWithImpl<$Res>
    extends _$GuardianResponseCopyWithImpl<$Res, _$GuardianResponseImpl>
    implements _$$GuardianResponseImplCopyWith<$Res> {
  __$$GuardianResponseImplCopyWithImpl(_$GuardianResponseImpl _value,
      $Res Function(_$GuardianResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? parentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$GuardianResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GuardianResponseImpl implements _GuardianResponse {
  const _$GuardianResponseImpl(
      {required this.id,
      required this.name,
      required this.photo,
      required this.parentId,
      required this.createdAt,
      required this.updatedAt,
      required this.phoneNumber});

  factory _$GuardianResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuardianResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? photo;
  @override
  final String? parentId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'GuardianResponse(id: $id, name: $name, photo: $photo, parentId: $parentId, createdAt: $createdAt, updatedAt: $updatedAt, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuardianResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, photo, parentId,
      createdAt, updatedAt, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuardianResponseImplCopyWith<_$GuardianResponseImpl> get copyWith =>
      __$$GuardianResponseImplCopyWithImpl<_$GuardianResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuardianResponseImplToJson(
      this,
    );
  }
}

abstract class _GuardianResponse implements GuardianResponse {
  const factory _GuardianResponse(
      {required final int? id,
      required final String? name,
      required final String? photo,
      required final String? parentId,
      required final DateTime? createdAt,
      required final DateTime? updatedAt,
      required final String? phoneNumber}) = _$GuardianResponseImpl;

  factory _GuardianResponse.fromJson(Map<String, dynamic> json) =
      _$GuardianResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get photo;
  @override
  String? get parentId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$GuardianResponseImplCopyWith<_$GuardianResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
