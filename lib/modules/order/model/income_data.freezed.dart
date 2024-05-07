// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'income_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IncomeData _$IncomeDataFromJson(Map<String, dynamic> json) {
  return _IncomeData.fromJson(json);
}

/// @nodoc
mixin _$IncomeData {
  String? get date => throw _privateConstructorUsedError;
  List<OrderResponse>? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomeDataCopyWith<IncomeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomeDataCopyWith<$Res> {
  factory $IncomeDataCopyWith(
          IncomeData value, $Res Function(IncomeData) then) =
      _$IncomeDataCopyWithImpl<$Res, IncomeData>;
  @useResult
  $Res call({String? date, List<OrderResponse>? value});
}

/// @nodoc
class _$IncomeDataCopyWithImpl<$Res, $Val extends IncomeData>
    implements $IncomeDataCopyWith<$Res> {
  _$IncomeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IncomeDataImplCopyWith<$Res>
    implements $IncomeDataCopyWith<$Res> {
  factory _$$IncomeDataImplCopyWith(
          _$IncomeDataImpl value, $Res Function(_$IncomeDataImpl) then) =
      __$$IncomeDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? date, List<OrderResponse>? value});
}

/// @nodoc
class __$$IncomeDataImplCopyWithImpl<$Res>
    extends _$IncomeDataCopyWithImpl<$Res, _$IncomeDataImpl>
    implements _$$IncomeDataImplCopyWith<$Res> {
  __$$IncomeDataImplCopyWithImpl(
      _$IncomeDataImpl _value, $Res Function(_$IncomeDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? value = freezed,
  }) {
    return _then(_$IncomeDataImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<OrderResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IncomeDataImpl implements _IncomeData {
  const _$IncomeDataImpl({this.date, final List<OrderResponse>? value})
      : _value = value;

  factory _$IncomeDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IncomeDataImplFromJson(json);

  @override
  final String? date;
  final List<OrderResponse>? _value;
  @override
  List<OrderResponse>? get value {
    final value = _value;
    if (value == null) return null;
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'IncomeData(date: $date, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IncomeDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IncomeDataImplCopyWith<_$IncomeDataImpl> get copyWith =>
      __$$IncomeDataImplCopyWithImpl<_$IncomeDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IncomeDataImplToJson(
      this,
    );
  }
}

abstract class _IncomeData implements IncomeData {
  const factory _IncomeData(
      {final String? date,
      final List<OrderResponse>? value}) = _$IncomeDataImpl;

  factory _IncomeData.fromJson(Map<String, dynamic> json) =
      _$IncomeDataImpl.fromJson;

  @override
  String? get date;
  @override
  List<OrderResponse>? get value;
  @override
  @JsonKey(ignore: true)
  _$$IncomeDataImplCopyWith<_$IncomeDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
