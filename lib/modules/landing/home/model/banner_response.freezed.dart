// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'banner_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BannerResponse _$BannerResponseFromJson(Map<String, dynamic> json) {
  return _BannerResponse.fromJson(json);
}

/// @nodoc
mixin _$BannerResponse {
  String? get link => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerResponseCopyWith<BannerResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerResponseCopyWith<$Res> {
  factory $BannerResponseCopyWith(
          BannerResponse value, $Res Function(BannerResponse) then) =
      _$BannerResponseCopyWithImpl<$Res, BannerResponse>;
  @useResult
  $Res call({String? link, String? description});
}

/// @nodoc
class _$BannerResponseCopyWithImpl<$Res, $Val extends BannerResponse>
    implements $BannerResponseCopyWith<$Res> {
  _$BannerResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BannerResponseImplCopyWith<$Res>
    implements $BannerResponseCopyWith<$Res> {
  factory _$$BannerResponseImplCopyWith(_$BannerResponseImpl value,
          $Res Function(_$BannerResponseImpl) then) =
      __$$BannerResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? link, String? description});
}

/// @nodoc
class __$$BannerResponseImplCopyWithImpl<$Res>
    extends _$BannerResponseCopyWithImpl<$Res, _$BannerResponseImpl>
    implements _$$BannerResponseImplCopyWith<$Res> {
  __$$BannerResponseImplCopyWithImpl(
      _$BannerResponseImpl _value, $Res Function(_$BannerResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? link = freezed,
    Object? description = freezed,
  }) {
    return _then(_$BannerResponseImpl(
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BannerResponseImpl implements _BannerResponse {
  const _$BannerResponseImpl({this.link, this.description});

  factory _$BannerResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BannerResponseImplFromJson(json);

  @override
  final String? link;
  @override
  final String? description;

  @override
  String toString() {
    return 'BannerResponse(link: $link, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BannerResponseImpl &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, link, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BannerResponseImplCopyWith<_$BannerResponseImpl> get copyWith =>
      __$$BannerResponseImplCopyWithImpl<_$BannerResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BannerResponseImplToJson(
      this,
    );
  }
}

abstract class _BannerResponse implements BannerResponse {
  const factory _BannerResponse(
      {final String? link, final String? description}) = _$BannerResponseImpl;

  factory _BannerResponse.fromJson(Map<String, dynamic> json) =
      _$BannerResponseImpl.fromJson;

  @override
  String? get link;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$BannerResponseImplCopyWith<_$BannerResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
