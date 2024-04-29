// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_price_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailPriceResponse _$DetailPriceResponseFromJson(Map<String, dynamic> json) {
  return _DetailPriceResponse.fromJson(json);
}

/// @nodoc
mixin _$DetailPriceResponse {
  int? get totalPrice => throw _privateConstructorUsedError;
  List<DetailPrice>? get detailPrice => throw _privateConstructorUsedError;
  List<DetailPrice>? get otherPrice => throw _privateConstructorUsedError;
  bool? get isUsePoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailPriceResponseCopyWith<DetailPriceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPriceResponseCopyWith<$Res> {
  factory $DetailPriceResponseCopyWith(
          DetailPriceResponse value, $Res Function(DetailPriceResponse) then) =
      _$DetailPriceResponseCopyWithImpl<$Res, DetailPriceResponse>;
  @useResult
  $Res call(
      {int? totalPrice,
      List<DetailPrice>? detailPrice,
      List<DetailPrice>? otherPrice,
      bool? isUsePoint});
}

/// @nodoc
class _$DetailPriceResponseCopyWithImpl<$Res, $Val extends DetailPriceResponse>
    implements $DetailPriceResponseCopyWith<$Res> {
  _$DetailPriceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = freezed,
    Object? detailPrice = freezed,
    Object? otherPrice = freezed,
    Object? isUsePoint = freezed,
  }) {
    return _then(_value.copyWith(
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      detailPrice: freezed == detailPrice
          ? _value.detailPrice
          : detailPrice // ignore: cast_nullable_to_non_nullable
              as List<DetailPrice>?,
      otherPrice: freezed == otherPrice
          ? _value.otherPrice
          : otherPrice // ignore: cast_nullable_to_non_nullable
              as List<DetailPrice>?,
      isUsePoint: freezed == isUsePoint
          ? _value.isUsePoint
          : isUsePoint // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailPriceResponseImplCopyWith<$Res>
    implements $DetailPriceResponseCopyWith<$Res> {
  factory _$$DetailPriceResponseImplCopyWith(_$DetailPriceResponseImpl value,
          $Res Function(_$DetailPriceResponseImpl) then) =
      __$$DetailPriceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? totalPrice,
      List<DetailPrice>? detailPrice,
      List<DetailPrice>? otherPrice,
      bool? isUsePoint});
}

/// @nodoc
class __$$DetailPriceResponseImplCopyWithImpl<$Res>
    extends _$DetailPriceResponseCopyWithImpl<$Res, _$DetailPriceResponseImpl>
    implements _$$DetailPriceResponseImplCopyWith<$Res> {
  __$$DetailPriceResponseImplCopyWithImpl(_$DetailPriceResponseImpl _value,
      $Res Function(_$DetailPriceResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = freezed,
    Object? detailPrice = freezed,
    Object? otherPrice = freezed,
    Object? isUsePoint = freezed,
  }) {
    return _then(_$DetailPriceResponseImpl(
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      detailPrice: freezed == detailPrice
          ? _value._detailPrice
          : detailPrice // ignore: cast_nullable_to_non_nullable
              as List<DetailPrice>?,
      otherPrice: freezed == otherPrice
          ? _value._otherPrice
          : otherPrice // ignore: cast_nullable_to_non_nullable
              as List<DetailPrice>?,
      isUsePoint: freezed == isUsePoint
          ? _value.isUsePoint
          : isUsePoint // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DetailPriceResponseImpl extends _DetailPriceResponse {
  const _$DetailPriceResponseImpl(
      {this.totalPrice,
      final List<DetailPrice>? detailPrice,
      final List<DetailPrice>? otherPrice,
      this.isUsePoint})
      : _detailPrice = detailPrice,
        _otherPrice = otherPrice,
        super._();

  factory _$DetailPriceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailPriceResponseImplFromJson(json);

  @override
  final int? totalPrice;
  final List<DetailPrice>? _detailPrice;
  @override
  List<DetailPrice>? get detailPrice {
    final value = _detailPrice;
    if (value == null) return null;
    if (_detailPrice is EqualUnmodifiableListView) return _detailPrice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DetailPrice>? _otherPrice;
  @override
  List<DetailPrice>? get otherPrice {
    final value = _otherPrice;
    if (value == null) return null;
    if (_otherPrice is EqualUnmodifiableListView) return _otherPrice;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isUsePoint;

  @override
  String toString() {
    return 'DetailPriceResponse(totalPrice: $totalPrice, detailPrice: $detailPrice, otherPrice: $otherPrice, isUsePoint: $isUsePoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPriceResponseImpl &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other._detailPrice, _detailPrice) &&
            const DeepCollectionEquality()
                .equals(other._otherPrice, _otherPrice) &&
            (identical(other.isUsePoint, isUsePoint) ||
                other.isUsePoint == isUsePoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      totalPrice,
      const DeepCollectionEquality().hash(_detailPrice),
      const DeepCollectionEquality().hash(_otherPrice),
      isUsePoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPriceResponseImplCopyWith<_$DetailPriceResponseImpl> get copyWith =>
      __$$DetailPriceResponseImplCopyWithImpl<_$DetailPriceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailPriceResponseImplToJson(
      this,
    );
  }
}

abstract class _DetailPriceResponse extends DetailPriceResponse {
  const factory _DetailPriceResponse(
      {final int? totalPrice,
      final List<DetailPrice>? detailPrice,
      final List<DetailPrice>? otherPrice,
      final bool? isUsePoint}) = _$DetailPriceResponseImpl;
  const _DetailPriceResponse._() : super._();

  factory _DetailPriceResponse.fromJson(Map<String, dynamic> json) =
      _$DetailPriceResponseImpl.fromJson;

  @override
  int? get totalPrice;
  @override
  List<DetailPrice>? get detailPrice;
  @override
  List<DetailPrice>? get otherPrice;
  @override
  bool? get isUsePoint;
  @override
  @JsonKey(ignore: true)
  _$$DetailPriceResponseImplCopyWith<_$DetailPriceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DetailPrice _$DetailPriceFromJson(Map<String, dynamic> json) {
  return _DetailPrice.fromJson(json);
}

/// @nodoc
mixin _$DetailPrice {
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailPriceCopyWith<DetailPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPriceCopyWith<$Res> {
  factory $DetailPriceCopyWith(
          DetailPrice value, $Res Function(DetailPrice) then) =
      _$DetailPriceCopyWithImpl<$Res, DetailPrice>;
  @useResult
  $Res call({String? name, int? price, int? quantity, int? totalPrice});
}

/// @nodoc
class _$DetailPriceCopyWithImpl<$Res, $Val extends DetailPrice>
    implements $DetailPriceCopyWith<$Res> {
  _$DetailPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailPriceImplCopyWith<$Res>
    implements $DetailPriceCopyWith<$Res> {
  factory _$$DetailPriceImplCopyWith(
          _$DetailPriceImpl value, $Res Function(_$DetailPriceImpl) then) =
      __$$DetailPriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? price, int? quantity, int? totalPrice});
}

/// @nodoc
class __$$DetailPriceImplCopyWithImpl<$Res>
    extends _$DetailPriceCopyWithImpl<$Res, _$DetailPriceImpl>
    implements _$$DetailPriceImplCopyWith<$Res> {
  __$$DetailPriceImplCopyWithImpl(
      _$DetailPriceImpl _value, $Res Function(_$DetailPriceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$DetailPriceImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$DetailPriceImpl extends _DetailPrice {
  const _$DetailPriceImpl(
      {this.name, this.price, this.quantity, this.totalPrice})
      : super._();

  factory _$DetailPriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailPriceImplFromJson(json);

  @override
  final String? name;
  @override
  final int? price;
  @override
  final int? quantity;
  @override
  final int? totalPrice;

  @override
  String toString() {
    return 'DetailPrice(name: $name, price: $price, quantity: $quantity, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPriceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, price, quantity, totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPriceImplCopyWith<_$DetailPriceImpl> get copyWith =>
      __$$DetailPriceImplCopyWithImpl<_$DetailPriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailPriceImplToJson(
      this,
    );
  }
}

abstract class _DetailPrice extends DetailPrice {
  const factory _DetailPrice(
      {final String? name,
      final int? price,
      final int? quantity,
      final int? totalPrice}) = _$DetailPriceImpl;
  const _DetailPrice._() : super._();

  factory _DetailPrice.fromJson(Map<String, dynamic> json) =
      _$DetailPriceImpl.fromJson;

  @override
  String? get name;
  @override
  int? get price;
  @override
  int? get quantity;
  @override
  int? get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$DetailPriceImplCopyWith<_$DetailPriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
