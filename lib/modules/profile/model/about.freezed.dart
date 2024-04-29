// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AboutResponse _$AboutResponseFromJson(Map<String, dynamic> json) {
  return _AboutResponse.fromJson(json);
}

/// @nodoc
mixin _$AboutResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;
  String? get appId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutResponseCopyWith<AboutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutResponseCopyWith<$Res> {
  factory $AboutResponseCopyWith(
          AboutResponse value, $Res Function(AboutResponse) then) =
      _$AboutResponseCopyWithImpl<$Res, AboutResponse>;
  @useResult
  $Res call(
      {int? id,
      String? type,
      String? content,
      String? lang,
      String? appId,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$AboutResponseCopyWithImpl<$Res, $Val extends AboutResponse>
    implements $AboutResponseCopyWith<$Res> {
  _$AboutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? content = freezed,
    Object? lang = freezed,
    Object? appId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutResponseImplCopyWith<$Res>
    implements $AboutResponseCopyWith<$Res> {
  factory _$$AboutResponseImplCopyWith(
          _$AboutResponseImpl value, $Res Function(_$AboutResponseImpl) then) =
      __$$AboutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? type,
      String? content,
      String? lang,
      String? appId,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$AboutResponseImplCopyWithImpl<$Res>
    extends _$AboutResponseCopyWithImpl<$Res, _$AboutResponseImpl>
    implements _$$AboutResponseImplCopyWith<$Res> {
  __$$AboutResponseImplCopyWithImpl(
      _$AboutResponseImpl _value, $Res Function(_$AboutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? content = freezed,
    Object? lang = freezed,
    Object? appId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$AboutResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$AboutResponseImpl implements _AboutResponse {
  const _$AboutResponseImpl(
      {this.id,
      this.type,
      this.content,
      this.lang,
      this.appId,
      this.createdAt,
      this.updatedAt});

  factory _$AboutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? type;
  @override
  final String? content;
  @override
  final String? lang;
  @override
  final String? appId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'AboutResponse(id: $id, type: $type, content: $content, lang: $lang, appId: $appId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.lang, lang) || other.lang == lang) &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, content, lang, appId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutResponseImplCopyWith<_$AboutResponseImpl> get copyWith =>
      __$$AboutResponseImplCopyWithImpl<_$AboutResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutResponseImplToJson(
      this,
    );
  }
}

abstract class _AboutResponse implements AboutResponse {
  const factory _AboutResponse(
      {final int? id,
      final String? type,
      final String? content,
      final String? lang,
      final String? appId,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$AboutResponseImpl;

  factory _AboutResponse.fromJson(Map<String, dynamic> json) =
      _$AboutResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get type;
  @override
  String? get content;
  @override
  String? get lang;
  @override
  String? get appId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$AboutResponseImplCopyWith<_$AboutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
