// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'growth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GrowthResponse _$GrowthResponseFromJson(Map<String, dynamic> json) {
  return _GrowthResponse.fromJson(json);
}

/// @nodoc
mixin _$GrowthResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get weight => throw _privateConstructorUsedError;
  String? get headCircumtance => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateTime? get measureDate => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GrowthResponseCopyWith<GrowthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GrowthResponseCopyWith<$Res> {
  factory $GrowthResponseCopyWith(
          GrowthResponse value, $Res Function(GrowthResponse) then) =
      _$GrowthResponseCopyWithImpl<$Res, GrowthResponse>;
  @useResult
  $Res call(
      {int? id,
      String? age,
      String? height,
      String? weight,
      String? headCircumtance,
      String? type,
      DateTime? measureDate,
      String? unit});
}

/// @nodoc
class _$GrowthResponseCopyWithImpl<$Res, $Val extends GrowthResponse>
    implements $GrowthResponseCopyWith<$Res> {
  _$GrowthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? headCircumtance = freezed,
    Object? type = freezed,
    Object? measureDate = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      headCircumtance: freezed == headCircumtance
          ? _value.headCircumtance
          : headCircumtance // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      measureDate: freezed == measureDate
          ? _value.measureDate
          : measureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GrowthResponseImplCopyWith<$Res>
    implements $GrowthResponseCopyWith<$Res> {
  factory _$$GrowthResponseImplCopyWith(_$GrowthResponseImpl value,
          $Res Function(_$GrowthResponseImpl) then) =
      __$$GrowthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? age,
      String? height,
      String? weight,
      String? headCircumtance,
      String? type,
      DateTime? measureDate,
      String? unit});
}

/// @nodoc
class __$$GrowthResponseImplCopyWithImpl<$Res>
    extends _$GrowthResponseCopyWithImpl<$Res, _$GrowthResponseImpl>
    implements _$$GrowthResponseImplCopyWith<$Res> {
  __$$GrowthResponseImplCopyWithImpl(
      _$GrowthResponseImpl _value, $Res Function(_$GrowthResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? age = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? headCircumtance = freezed,
    Object? type = freezed,
    Object? measureDate = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$GrowthResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      headCircumtance: freezed == headCircumtance
          ? _value.headCircumtance
          : headCircumtance // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      measureDate: freezed == measureDate
          ? _value.measureDate
          : measureDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GrowthResponseImpl extends _GrowthResponse {
  const _$GrowthResponseImpl(
      {required this.id,
      required this.age,
      required this.height,
      required this.weight,
      required this.headCircumtance,
      required this.type,
      required this.measureDate,
      required this.unit})
      : super._();

  factory _$GrowthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GrowthResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? age;
  @override
  final String? height;
  @override
  final String? weight;
  @override
  final String? headCircumtance;
  @override
  final String? type;
  @override
  final DateTime? measureDate;
  @override
  final String? unit;

  @override
  String toString() {
    return 'GrowthResponse(id: $id, age: $age, height: $height, weight: $weight, headCircumtance: $headCircumtance, type: $type, measureDate: $measureDate, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GrowthResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.headCircumtance, headCircumtance) ||
                other.headCircumtance == headCircumtance) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.measureDate, measureDate) ||
                other.measureDate == measureDate) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, age, height, weight,
      headCircumtance, type, measureDate, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GrowthResponseImplCopyWith<_$GrowthResponseImpl> get copyWith =>
      __$$GrowthResponseImplCopyWithImpl<_$GrowthResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GrowthResponseImplToJson(
      this,
    );
  }
}

abstract class _GrowthResponse extends GrowthResponse {
  const factory _GrowthResponse(
      {required final int? id,
      required final String? age,
      required final String? height,
      required final String? weight,
      required final String? headCircumtance,
      required final String? type,
      required final DateTime? measureDate,
      required final String? unit}) = _$GrowthResponseImpl;
  const _GrowthResponse._() : super._();

  factory _GrowthResponse.fromJson(Map<String, dynamic> json) =
      _$GrowthResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get age;
  @override
  String? get height;
  @override
  String? get weight;
  @override
  String? get headCircumtance;
  @override
  String? get type;
  @override
  DateTime? get measureDate;
  @override
  String? get unit;
  @override
  @JsonKey(ignore: true)
  _$$GrowthResponseImplCopyWith<_$GrowthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
