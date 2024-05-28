// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChartResponse _$ChartResponseFromJson(Map<String, dynamic> json) {
  return _ChartResponse.fromJson(json);
}

/// @nodoc
mixin _$ChartResponse {
  List<GrowthResponse>? get children => throw _privateConstructorUsedError;
  List<GrowthResponse>? get idealGrowth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartResponseCopyWith<ChartResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartResponseCopyWith<$Res> {
  factory $ChartResponseCopyWith(
          ChartResponse value, $Res Function(ChartResponse) then) =
      _$ChartResponseCopyWithImpl<$Res, ChartResponse>;
  @useResult
  $Res call(
      {List<GrowthResponse>? children, List<GrowthResponse>? idealGrowth});
}

/// @nodoc
class _$ChartResponseCopyWithImpl<$Res, $Val extends ChartResponse>
    implements $ChartResponseCopyWith<$Res> {
  _$ChartResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = freezed,
    Object? idealGrowth = freezed,
  }) {
    return _then(_value.copyWith(
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<GrowthResponse>?,
      idealGrowth: freezed == idealGrowth
          ? _value.idealGrowth
          : idealGrowth // ignore: cast_nullable_to_non_nullable
              as List<GrowthResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartResponseImplCopyWith<$Res>
    implements $ChartResponseCopyWith<$Res> {
  factory _$$ChartResponseImplCopyWith(
          _$ChartResponseImpl value, $Res Function(_$ChartResponseImpl) then) =
      __$$ChartResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<GrowthResponse>? children, List<GrowthResponse>? idealGrowth});
}

/// @nodoc
class __$$ChartResponseImplCopyWithImpl<$Res>
    extends _$ChartResponseCopyWithImpl<$Res, _$ChartResponseImpl>
    implements _$$ChartResponseImplCopyWith<$Res> {
  __$$ChartResponseImplCopyWithImpl(
      _$ChartResponseImpl _value, $Res Function(_$ChartResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = freezed,
    Object? idealGrowth = freezed,
  }) {
    return _then(_$ChartResponseImpl(
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<GrowthResponse>?,
      idealGrowth: freezed == idealGrowth
          ? _value._idealGrowth
          : idealGrowth // ignore: cast_nullable_to_non_nullable
              as List<GrowthResponse>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ChartResponseImpl implements _ChartResponse {
  const _$ChartResponseImpl(
      {required final List<GrowthResponse>? children,
      required final List<GrowthResponse>? idealGrowth})
      : _children = children,
        _idealGrowth = idealGrowth;

  factory _$ChartResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartResponseImplFromJson(json);

  final List<GrowthResponse>? _children;
  @override
  List<GrowthResponse>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GrowthResponse>? _idealGrowth;
  @override
  List<GrowthResponse>? get idealGrowth {
    final value = _idealGrowth;
    if (value == null) return null;
    if (_idealGrowth is EqualUnmodifiableListView) return _idealGrowth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChartResponse(children: $children, idealGrowth: $idealGrowth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartResponseImpl &&
            const DeepCollectionEquality().equals(other._children, _children) &&
            const DeepCollectionEquality()
                .equals(other._idealGrowth, _idealGrowth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_children),
      const DeepCollectionEquality().hash(_idealGrowth));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartResponseImplCopyWith<_$ChartResponseImpl> get copyWith =>
      __$$ChartResponseImplCopyWithImpl<_$ChartResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartResponseImplToJson(
      this,
    );
  }
}

abstract class _ChartResponse implements ChartResponse {
  const factory _ChartResponse(
      {required final List<GrowthResponse>? children,
      required final List<GrowthResponse>? idealGrowth}) = _$ChartResponseImpl;

  factory _ChartResponse.fromJson(Map<String, dynamic> json) =
      _$ChartResponseImpl.fromJson;

  @override
  List<GrowthResponse>? get children;
  @override
  List<GrowthResponse>? get idealGrowth;
  @override
  @JsonKey(ignore: true)
  _$$ChartResponseImplCopyWith<_$ChartResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
