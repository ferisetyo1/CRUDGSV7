// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentMethodResponse _$PaymentMethodResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentMethodResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethodResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<Channel>? get channels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodResponseCopyWith<PaymentMethodResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodResponseCopyWith<$Res> {
  factory $PaymentMethodResponseCopyWith(PaymentMethodResponse value,
          $Res Function(PaymentMethodResponse) then) =
      _$PaymentMethodResponseCopyWithImpl<$Res, PaymentMethodResponse>;
  @useResult
  $Res call({int? id, String? name, List<Channel>? channels});
}

/// @nodoc
class _$PaymentMethodResponseCopyWithImpl<$Res,
        $Val extends PaymentMethodResponse>
    implements $PaymentMethodResponseCopyWith<$Res> {
  _$PaymentMethodResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? channels = freezed,
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
      channels: freezed == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodResponseImplCopyWith<$Res>
    implements $PaymentMethodResponseCopyWith<$Res> {
  factory _$$PaymentMethodResponseImplCopyWith(
          _$PaymentMethodResponseImpl value,
          $Res Function(_$PaymentMethodResponseImpl) then) =
      __$$PaymentMethodResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, List<Channel>? channels});
}

/// @nodoc
class __$$PaymentMethodResponseImplCopyWithImpl<$Res>
    extends _$PaymentMethodResponseCopyWithImpl<$Res,
        _$PaymentMethodResponseImpl>
    implements _$$PaymentMethodResponseImplCopyWith<$Res> {
  __$$PaymentMethodResponseImplCopyWithImpl(_$PaymentMethodResponseImpl _value,
      $Res Function(_$PaymentMethodResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? channels = freezed,
  }) {
    return _then(_$PaymentMethodResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      channels: freezed == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<Channel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentMethodResponseImpl implements _PaymentMethodResponse {
  const _$PaymentMethodResponseImpl(
      {this.id, this.name, final List<Channel>? channels})
      : _channels = channels;

  factory _$PaymentMethodResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<Channel>? _channels;
  @override
  List<Channel>? get channels {
    final value = _channels;
    if (value == null) return null;
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentMethodResponse(id: $id, name: $name, channels: $channels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._channels, _channels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_channels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodResponseImplCopyWith<_$PaymentMethodResponseImpl>
      get copyWith => __$$PaymentMethodResponseImplCopyWithImpl<
          _$PaymentMethodResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethodResponse implements PaymentMethodResponse {
  const factory _PaymentMethodResponse(
      {final int? id,
      final String? name,
      final List<Channel>? channels}) = _$PaymentMethodResponseImpl;

  factory _PaymentMethodResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<Channel>? get channels;
  @override
  @JsonKey(ignore: true)
  _$$PaymentMethodResponseImplCopyWith<_$PaymentMethodResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get paymentType => throw _privateConstructorUsedError;
  String? get bankNumber => throw _privateConstructorUsedError;
  String? get accountHolderName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? icon,
      String? paymentType,
      String? bankNumber,
      String? accountHolderName});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? paymentType = freezed,
    Object? bankNumber = freezed,
    Object? accountHolderName = freezed,
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
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      bankNumber: freezed == bankNumber
          ? _value.bankNumber
          : bankNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? icon,
      String? paymentType,
      String? bankNumber,
      String? accountHolderName});
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? paymentType = freezed,
    Object? bankNumber = freezed,
    Object? accountHolderName = freezed,
  }) {
    return _then(_$ChannelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String?,
      bankNumber: freezed == bankNumber
          ? _value.bankNumber
          : bankNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderName: freezed == accountHolderName
          ? _value.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ChannelImpl implements _Channel {
  const _$ChannelImpl(
      {this.id,
      this.name,
      this.icon,
      this.paymentType,
      this.bankNumber,
      this.accountHolderName});

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final String? paymentType;
  @override
  final String? bankNumber;
  @override
  final String? accountHolderName;

  @override
  String toString() {
    return 'Channel(id: $id, name: $name, icon: $icon, paymentType: $paymentType, bankNumber: $bankNumber, accountHolderName: $accountHolderName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.bankNumber, bankNumber) ||
                other.bankNumber == bankNumber) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, icon, paymentType, bankNumber, accountHolderName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelImplToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {final int? id,
      final String? name,
      final String? icon,
      final String? paymentType,
      final String? bankNumber,
      final String? accountHolderName}) = _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get icon;
  @override
  String? get paymentType;
  @override
  String? get bankNumber;
  @override
  String? get accountHolderName;
  @override
  @JsonKey(ignore: true)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
