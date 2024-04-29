// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifikasi_setting_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NotifikasiSettingResponse _$NotifikasiSettingResponseFromJson(
    Map<String, dynamic> json) {
  return _NotifikasiSettingResponse.fromJson(json);
}

/// @nodoc
mixin _$NotifikasiSettingResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotifikasiSettingResponseCopyWith<NotifikasiSettingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotifikasiSettingResponseCopyWith<$Res> {
  factory $NotifikasiSettingResponseCopyWith(NotifikasiSettingResponse value,
          $Res Function(NotifikasiSettingResponse) then) =
      _$NotifikasiSettingResponseCopyWithImpl<$Res, NotifikasiSettingResponse>;
  @useResult
  $Res call({int? id, String? name, bool? isActive});
}

/// @nodoc
class _$NotifikasiSettingResponseCopyWithImpl<$Res,
        $Val extends NotifikasiSettingResponse>
    implements $NotifikasiSettingResponseCopyWith<$Res> {
  _$NotifikasiSettingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
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
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotifikasiSettingResponseImplCopyWith<$Res>
    implements $NotifikasiSettingResponseCopyWith<$Res> {
  factory _$$NotifikasiSettingResponseImplCopyWith(
          _$NotifikasiSettingResponseImpl value,
          $Res Function(_$NotifikasiSettingResponseImpl) then) =
      __$$NotifikasiSettingResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, bool? isActive});
}

/// @nodoc
class __$$NotifikasiSettingResponseImplCopyWithImpl<$Res>
    extends _$NotifikasiSettingResponseCopyWithImpl<$Res,
        _$NotifikasiSettingResponseImpl>
    implements _$$NotifikasiSettingResponseImplCopyWith<$Res> {
  __$$NotifikasiSettingResponseImplCopyWithImpl(
      _$NotifikasiSettingResponseImpl _value,
      $Res Function(_$NotifikasiSettingResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$NotifikasiSettingResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$NotifikasiSettingResponseImpl implements _NotifikasiSettingResponse {
  const _$NotifikasiSettingResponseImpl({this.id, this.name, this.isActive});

  factory _$NotifikasiSettingResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotifikasiSettingResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final bool? isActive;

  @override
  String toString() {
    return 'NotifikasiSettingResponse(id: $id, name: $name, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifikasiSettingResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotifikasiSettingResponseImplCopyWith<_$NotifikasiSettingResponseImpl>
      get copyWith => __$$NotifikasiSettingResponseImplCopyWithImpl<
          _$NotifikasiSettingResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotifikasiSettingResponseImplToJson(
      this,
    );
  }
}

abstract class _NotifikasiSettingResponse implements NotifikasiSettingResponse {
  const factory _NotifikasiSettingResponse(
      {final int? id,
      final String? name,
      final bool? isActive}) = _$NotifikasiSettingResponseImpl;

  factory _NotifikasiSettingResponse.fromJson(Map<String, dynamic> json) =
      _$NotifikasiSettingResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$NotifikasiSettingResponseImplCopyWith<_$NotifikasiSettingResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
