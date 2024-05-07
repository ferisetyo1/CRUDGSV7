// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
mixin _$OrderResponse {
  int? get id => throw _privateConstructorUsedError;
  dynamic get newPriceId => throw _privateConstructorUsedError;
  dynamic get type => throw _privateConstructorUsedError;
  dynamic get typeId => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  String? get specialRequest => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get discountAmount => throw _privateConstructorUsedError;
  String? get discountPercent => throw _privateConstructorUsedError;
  dynamic get voucherName => throw _privateConstructorUsedError;
  String? get totalDiscount => throw _privateConstructorUsedError;
  String? get fee => throw _privateConstructorUsedError;
  String? get bankFee => throw _privateConstructorUsedError;
  String? get totalPrice => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get statusRefund => throw _privateConstructorUsedError;
  String? get invoiceNumber => throw _privateConstructorUsedError;
  String? get virtualAccountNumber => throw _privateConstructorUsedError;
  dynamic get qrUrl => throw _privateConstructorUsedError;
  dynamic get deeplinkUrl => throw _privateConstructorUsedError;
  DateTime? get paymentAt => throw _privateConstructorUsedError;
  DateTime? get expiredAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  String? get rejectedReason => throw _privateConstructorUsedError;
  dynamic get rejectCategoryId => throw _privateConstructorUsedError;
  List<ChildrenItemDetail>? get childrenItemDetails =>
      throw _privateConstructorUsedError;
  List<OrderResponseItem>? get items => throw _privateConstructorUsedError;
  PaymentChannel? get paymentChannel => throw _privateConstructorUsedError;
  Parent? get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res, OrderResponse>;
  @useResult
  $Res call(
      {int? id,
      dynamic newPriceId,
      dynamic type,
      dynamic typeId,
      DateTime? startDate,
      DateTime? endDate,
      String? specialRequest,
      String? price,
      String? discountAmount,
      String? discountPercent,
      dynamic voucherName,
      String? totalDiscount,
      String? fee,
      String? bankFee,
      String? totalPrice,
      String? status,
      String? statusRefund,
      String? invoiceNumber,
      String? virtualAccountNumber,
      dynamic qrUrl,
      dynamic deeplinkUrl,
      DateTime? paymentAt,
      DateTime? expiredAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? rejectedReason,
      dynamic rejectCategoryId,
      List<ChildrenItemDetail>? childrenItemDetails,
      List<OrderResponseItem>? items,
      PaymentChannel? paymentChannel,
      Parent? parent});

  $PaymentChannelCopyWith<$Res>? get paymentChannel;
  $ParentCopyWith<$Res>? get parent;
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res, $Val extends OrderResponse>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? newPriceId = freezed,
    Object? type = freezed,
    Object? typeId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? specialRequest = freezed,
    Object? price = freezed,
    Object? discountAmount = freezed,
    Object? discountPercent = freezed,
    Object? voucherName = freezed,
    Object? totalDiscount = freezed,
    Object? fee = freezed,
    Object? bankFee = freezed,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? statusRefund = freezed,
    Object? invoiceNumber = freezed,
    Object? virtualAccountNumber = freezed,
    Object? qrUrl = freezed,
    Object? deeplinkUrl = freezed,
    Object? paymentAt = freezed,
    Object? expiredAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rejectedReason = freezed,
    Object? rejectCategoryId = freezed,
    Object? childrenItemDetails = freezed,
    Object? items = freezed,
    Object? paymentChannel = freezed,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      newPriceId: freezed == newPriceId
          ? _value.newPriceId
          : newPriceId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      specialRequest: freezed == specialRequest
          ? _value.specialRequest
          : specialRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercent: freezed == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherName: freezed == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      bankFee: freezed == bankFee
          ? _value.bankFee
          : bankFee // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusRefund: freezed == statusRefund
          ? _value.statusRefund
          : statusRefund // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      virtualAccountNumber: freezed == virtualAccountNumber
          ? _value.virtualAccountNumber
          : virtualAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrUrl: freezed == qrUrl
          ? _value.qrUrl
          : qrUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deeplinkUrl: freezed == deeplinkUrl
          ? _value.deeplinkUrl
          : deeplinkUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paymentAt: freezed == paymentAt
          ? _value.paymentAt
          : paymentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedReason: freezed == rejectedReason
          ? _value.rejectedReason
          : rejectedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectCategoryId: freezed == rejectCategoryId
          ? _value.rejectCategoryId
          : rejectCategoryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      childrenItemDetails: freezed == childrenItemDetails
          ? _value.childrenItemDetails
          : childrenItemDetails // ignore: cast_nullable_to_non_nullable
              as List<ChildrenItemDetail>?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderResponseItem>?,
      paymentChannel: freezed == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as PaymentChannel?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentChannelCopyWith<$Res>? get paymentChannel {
    if (_value.paymentChannel == null) {
      return null;
    }

    return $PaymentChannelCopyWith<$Res>(_value.paymentChannel!, (value) {
      return _then(_value.copyWith(paymentChannel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderResponseImplCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$$OrderResponseImplCopyWith(
          _$OrderResponseImpl value, $Res Function(_$OrderResponseImpl) then) =
      __$$OrderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      dynamic newPriceId,
      dynamic type,
      dynamic typeId,
      DateTime? startDate,
      DateTime? endDate,
      String? specialRequest,
      String? price,
      String? discountAmount,
      String? discountPercent,
      dynamic voucherName,
      String? totalDiscount,
      String? fee,
      String? bankFee,
      String? totalPrice,
      String? status,
      String? statusRefund,
      String? invoiceNumber,
      String? virtualAccountNumber,
      dynamic qrUrl,
      dynamic deeplinkUrl,
      DateTime? paymentAt,
      DateTime? expiredAt,
      DateTime? createdAt,
      DateTime? updatedAt,
      String? rejectedReason,
      dynamic rejectCategoryId,
      List<ChildrenItemDetail>? childrenItemDetails,
      List<OrderResponseItem>? items,
      PaymentChannel? paymentChannel,
      Parent? parent});

  @override
  $PaymentChannelCopyWith<$Res>? get paymentChannel;
  @override
  $ParentCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$OrderResponseImplCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res, _$OrderResponseImpl>
    implements _$$OrderResponseImplCopyWith<$Res> {
  __$$OrderResponseImplCopyWithImpl(
      _$OrderResponseImpl _value, $Res Function(_$OrderResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? newPriceId = freezed,
    Object? type = freezed,
    Object? typeId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? specialRequest = freezed,
    Object? price = freezed,
    Object? discountAmount = freezed,
    Object? discountPercent = freezed,
    Object? voucherName = freezed,
    Object? totalDiscount = freezed,
    Object? fee = freezed,
    Object? bankFee = freezed,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? statusRefund = freezed,
    Object? invoiceNumber = freezed,
    Object? virtualAccountNumber = freezed,
    Object? qrUrl = freezed,
    Object? deeplinkUrl = freezed,
    Object? paymentAt = freezed,
    Object? expiredAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? rejectedReason = freezed,
    Object? rejectCategoryId = freezed,
    Object? childrenItemDetails = freezed,
    Object? items = freezed,
    Object? paymentChannel = freezed,
    Object? parent = freezed,
  }) {
    return _then(_$OrderResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      newPriceId: freezed == newPriceId
          ? _value.newPriceId
          : newPriceId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as dynamic,
      typeId: freezed == typeId
          ? _value.typeId
          : typeId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      specialRequest: freezed == specialRequest
          ? _value.specialRequest
          : specialRequest // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      discountAmount: freezed == discountAmount
          ? _value.discountAmount
          : discountAmount // ignore: cast_nullable_to_non_nullable
              as String?,
      discountPercent: freezed == discountPercent
          ? _value.discountPercent
          : discountPercent // ignore: cast_nullable_to_non_nullable
              as String?,
      voucherName: freezed == voucherName
          ? _value.voucherName
          : voucherName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalDiscount: freezed == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      fee: freezed == fee
          ? _value.fee
          : fee // ignore: cast_nullable_to_non_nullable
              as String?,
      bankFee: freezed == bankFee
          ? _value.bankFee
          : bankFee // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusRefund: freezed == statusRefund
          ? _value.statusRefund
          : statusRefund // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceNumber: freezed == invoiceNumber
          ? _value.invoiceNumber
          : invoiceNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      virtualAccountNumber: freezed == virtualAccountNumber
          ? _value.virtualAccountNumber
          : virtualAccountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      qrUrl: freezed == qrUrl
          ? _value.qrUrl
          : qrUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      deeplinkUrl: freezed == deeplinkUrl
          ? _value.deeplinkUrl
          : deeplinkUrl // ignore: cast_nullable_to_non_nullable
              as dynamic,
      paymentAt: freezed == paymentAt
          ? _value.paymentAt
          : paymentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expiredAt: freezed == expiredAt
          ? _value.expiredAt
          : expiredAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectedReason: freezed == rejectedReason
          ? _value.rejectedReason
          : rejectedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      rejectCategoryId: freezed == rejectCategoryId
          ? _value.rejectCategoryId
          : rejectCategoryId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      childrenItemDetails: freezed == childrenItemDetails
          ? _value._childrenItemDetails
          : childrenItemDetails // ignore: cast_nullable_to_non_nullable
              as List<ChildrenItemDetail>?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<OrderResponseItem>?,
      paymentChannel: freezed == paymentChannel
          ? _value.paymentChannel
          : paymentChannel // ignore: cast_nullable_to_non_nullable
              as PaymentChannel?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as Parent?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OrderResponseImpl implements _OrderResponse {
  const _$OrderResponseImpl(
      {this.id,
      this.newPriceId,
      this.type,
      this.typeId,
      this.startDate,
      this.endDate,
      this.specialRequest,
      this.price,
      this.discountAmount,
      this.discountPercent,
      this.voucherName,
      this.totalDiscount,
      this.fee,
      this.bankFee,
      this.totalPrice,
      this.status,
      this.statusRefund,
      this.invoiceNumber,
      this.virtualAccountNumber,
      this.qrUrl,
      this.deeplinkUrl,
      this.paymentAt,
      this.expiredAt,
      this.createdAt,
      this.updatedAt,
      this.rejectedReason,
      this.rejectCategoryId,
      final List<ChildrenItemDetail>? childrenItemDetails,
      final List<OrderResponseItem>? items,
      this.paymentChannel,
      this.parent})
      : _childrenItemDetails = childrenItemDetails,
        _items = items;

  factory _$OrderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final dynamic newPriceId;
  @override
  final dynamic type;
  @override
  final dynamic typeId;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final String? specialRequest;
  @override
  final String? price;
  @override
  final String? discountAmount;
  @override
  final String? discountPercent;
  @override
  final dynamic voucherName;
  @override
  final String? totalDiscount;
  @override
  final String? fee;
  @override
  final String? bankFee;
  @override
  final String? totalPrice;
  @override
  final String? status;
  @override
  final String? statusRefund;
  @override
  final String? invoiceNumber;
  @override
  final String? virtualAccountNumber;
  @override
  final dynamic qrUrl;
  @override
  final dynamic deeplinkUrl;
  @override
  final DateTime? paymentAt;
  @override
  final DateTime? expiredAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? rejectedReason;
  @override
  final dynamic rejectCategoryId;
  final List<ChildrenItemDetail>? _childrenItemDetails;
  @override
  List<ChildrenItemDetail>? get childrenItemDetails {
    final value = _childrenItemDetails;
    if (value == null) return null;
    if (_childrenItemDetails is EqualUnmodifiableListView)
      return _childrenItemDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<OrderResponseItem>? _items;
  @override
  List<OrderResponseItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PaymentChannel? paymentChannel;
  @override
  final Parent? parent;

  @override
  String toString() {
    return 'OrderResponse(id: $id, newPriceId: $newPriceId, type: $type, typeId: $typeId, startDate: $startDate, endDate: $endDate, specialRequest: $specialRequest, price: $price, discountAmount: $discountAmount, discountPercent: $discountPercent, voucherName: $voucherName, totalDiscount: $totalDiscount, fee: $fee, bankFee: $bankFee, totalPrice: $totalPrice, status: $status, statusRefund: $statusRefund, invoiceNumber: $invoiceNumber, virtualAccountNumber: $virtualAccountNumber, qrUrl: $qrUrl, deeplinkUrl: $deeplinkUrl, paymentAt: $paymentAt, expiredAt: $expiredAt, createdAt: $createdAt, updatedAt: $updatedAt, rejectedReason: $rejectedReason, rejectCategoryId: $rejectCategoryId, childrenItemDetails: $childrenItemDetails, items: $items, paymentChannel: $paymentChannel, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.newPriceId, newPriceId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.typeId, typeId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.specialRequest, specialRequest) ||
                other.specialRequest == specialRequest) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountAmount, discountAmount) ||
                other.discountAmount == discountAmount) &&
            (identical(other.discountPercent, discountPercent) ||
                other.discountPercent == discountPercent) &&
            const DeepCollectionEquality()
                .equals(other.voucherName, voucherName) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.fee, fee) || other.fee == fee) &&
            (identical(other.bankFee, bankFee) || other.bankFee == bankFee) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusRefund, statusRefund) ||
                other.statusRefund == statusRefund) &&
            (identical(other.invoiceNumber, invoiceNumber) ||
                other.invoiceNumber == invoiceNumber) &&
            (identical(other.virtualAccountNumber, virtualAccountNumber) ||
                other.virtualAccountNumber == virtualAccountNumber) &&
            const DeepCollectionEquality().equals(other.qrUrl, qrUrl) &&
            const DeepCollectionEquality()
                .equals(other.deeplinkUrl, deeplinkUrl) &&
            (identical(other.paymentAt, paymentAt) ||
                other.paymentAt == paymentAt) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.rejectedReason, rejectedReason) ||
                other.rejectedReason == rejectedReason) &&
            const DeepCollectionEquality()
                .equals(other.rejectCategoryId, rejectCategoryId) &&
            const DeepCollectionEquality()
                .equals(other._childrenItemDetails, _childrenItemDetails) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.paymentChannel, paymentChannel) ||
                other.paymentChannel == paymentChannel) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        const DeepCollectionEquality().hash(newPriceId),
        const DeepCollectionEquality().hash(type),
        const DeepCollectionEquality().hash(typeId),
        startDate,
        endDate,
        specialRequest,
        price,
        discountAmount,
        discountPercent,
        const DeepCollectionEquality().hash(voucherName),
        totalDiscount,
        fee,
        bankFee,
        totalPrice,
        status,
        statusRefund,
        invoiceNumber,
        virtualAccountNumber,
        const DeepCollectionEquality().hash(qrUrl),
        const DeepCollectionEquality().hash(deeplinkUrl),
        paymentAt,
        expiredAt,
        createdAt,
        updatedAt,
        rejectedReason,
        const DeepCollectionEquality().hash(rejectCategoryId),
        const DeepCollectionEquality().hash(_childrenItemDetails),
        const DeepCollectionEquality().hash(_items),
        paymentChannel,
        parent
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      __$$OrderResponseImplCopyWithImpl<_$OrderResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseImplToJson(
      this,
    );
  }
}

abstract class _OrderResponse implements OrderResponse {
  const factory _OrderResponse(
      {final int? id,
      final dynamic newPriceId,
      final dynamic type,
      final dynamic typeId,
      final DateTime? startDate,
      final DateTime? endDate,
      final String? specialRequest,
      final String? price,
      final String? discountAmount,
      final String? discountPercent,
      final dynamic voucherName,
      final String? totalDiscount,
      final String? fee,
      final String? bankFee,
      final String? totalPrice,
      final String? status,
      final String? statusRefund,
      final String? invoiceNumber,
      final String? virtualAccountNumber,
      final dynamic qrUrl,
      final dynamic deeplinkUrl,
      final DateTime? paymentAt,
      final DateTime? expiredAt,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final String? rejectedReason,
      final dynamic rejectCategoryId,
      final List<ChildrenItemDetail>? childrenItemDetails,
      final List<OrderResponseItem>? items,
      final PaymentChannel? paymentChannel,
      final Parent? parent}) = _$OrderResponseImpl;

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$OrderResponseImpl.fromJson;

  @override
  int? get id;
  @override
  dynamic get newPriceId;
  @override
  dynamic get type;
  @override
  dynamic get typeId;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  String? get specialRequest;
  @override
  String? get price;
  @override
  String? get discountAmount;
  @override
  String? get discountPercent;
  @override
  dynamic get voucherName;
  @override
  String? get totalDiscount;
  @override
  String? get fee;
  @override
  String? get bankFee;
  @override
  String? get totalPrice;
  @override
  String? get status;
  @override
  String? get statusRefund;
  @override
  String? get invoiceNumber;
  @override
  String? get virtualAccountNumber;
  @override
  dynamic get qrUrl;
  @override
  dynamic get deeplinkUrl;
  @override
  DateTime? get paymentAt;
  @override
  DateTime? get expiredAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  String? get rejectedReason;
  @override
  dynamic get rejectCategoryId;
  @override
  List<ChildrenItemDetail>? get childrenItemDetails;
  @override
  List<OrderResponseItem>? get items;
  @override
  PaymentChannel? get paymentChannel;
  @override
  Parent? get parent;
  @override
  @JsonKey(ignore: true)
  _$$OrderResponseImplCopyWith<_$OrderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildrenItemDetail _$ChildrenItemDetailFromJson(Map<String, dynamic> json) {
  return _ChildrenItemDetail.fromJson(json);
}

/// @nodoc
mixin _$ChildrenItemDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get address => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get ageString => throw _privateConstructorUsedError;
  ProgramDetail? get programDetail => throw _privateConstructorUsedError;
  List<ChildrenItemDetailItem>? get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildrenItemDetailCopyWith<ChildrenItemDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenItemDetailCopyWith<$Res> {
  factory $ChildrenItemDetailCopyWith(
          ChildrenItemDetail value, $Res Function(ChildrenItemDetail) then) =
      _$ChildrenItemDetailCopyWithImpl<$Res, ChildrenItemDetail>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic address,
      DateTime? birthDate,
      int? age,
      String? ageString,
      ProgramDetail? programDetail,
      List<ChildrenItemDetailItem>? items});

  $ProgramDetailCopyWith<$Res>? get programDetail;
}

/// @nodoc
class _$ChildrenItemDetailCopyWithImpl<$Res, $Val extends ChildrenItemDetail>
    implements $ChildrenItemDetailCopyWith<$Res> {
  _$ChildrenItemDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? birthDate = freezed,
    Object? age = freezed,
    Object? ageString = freezed,
    Object? programDetail = freezed,
    Object? items = freezed,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      ageString: freezed == ageString
          ? _value.ageString
          : ageString // ignore: cast_nullable_to_non_nullable
              as String?,
      programDetail: freezed == programDetail
          ? _value.programDetail
          : programDetail // ignore: cast_nullable_to_non_nullable
              as ProgramDetail?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ChildrenItemDetailItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProgramDetailCopyWith<$Res>? get programDetail {
    if (_value.programDetail == null) {
      return null;
    }

    return $ProgramDetailCopyWith<$Res>(_value.programDetail!, (value) {
      return _then(_value.copyWith(programDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChildrenItemDetailImplCopyWith<$Res>
    implements $ChildrenItemDetailCopyWith<$Res> {
  factory _$$ChildrenItemDetailImplCopyWith(_$ChildrenItemDetailImpl value,
          $Res Function(_$ChildrenItemDetailImpl) then) =
      __$$ChildrenItemDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic address,
      DateTime? birthDate,
      int? age,
      String? ageString,
      ProgramDetail? programDetail,
      List<ChildrenItemDetailItem>? items});

  @override
  $ProgramDetailCopyWith<$Res>? get programDetail;
}

/// @nodoc
class __$$ChildrenItemDetailImplCopyWithImpl<$Res>
    extends _$ChildrenItemDetailCopyWithImpl<$Res, _$ChildrenItemDetailImpl>
    implements _$$ChildrenItemDetailImplCopyWith<$Res> {
  __$$ChildrenItemDetailImplCopyWithImpl(_$ChildrenItemDetailImpl _value,
      $Res Function(_$ChildrenItemDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? birthDate = freezed,
    Object? age = freezed,
    Object? ageString = freezed,
    Object? programDetail = freezed,
    Object? items = freezed,
  }) {
    return _then(_$ChildrenItemDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as dynamic,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      ageString: freezed == ageString
          ? _value.ageString
          : ageString // ignore: cast_nullable_to_non_nullable
              as String?,
      programDetail: freezed == programDetail
          ? _value.programDetail
          : programDetail // ignore: cast_nullable_to_non_nullable
              as ProgramDetail?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ChildrenItemDetailItem>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ChildrenItemDetailImpl implements _ChildrenItemDetail {
  const _$ChildrenItemDetailImpl(
      {this.id,
      this.name,
      this.address,
      this.birthDate,
      this.age,
      this.ageString,
      this.programDetail,
      final List<ChildrenItemDetailItem>? items})
      : _items = items;

  factory _$ChildrenItemDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildrenItemDetailImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final dynamic address;
  @override
  final DateTime? birthDate;
  @override
  final int? age;
  @override
  final String? ageString;
  @override
  final ProgramDetail? programDetail;
  final List<ChildrenItemDetailItem>? _items;
  @override
  List<ChildrenItemDetailItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChildrenItemDetail(id: $id, name: $name, address: $address, birthDate: $birthDate, age: $age, ageString: $ageString, programDetail: $programDetail, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenItemDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.ageString, ageString) ||
                other.ageString == ageString) &&
            (identical(other.programDetail, programDetail) ||
                other.programDetail == programDetail) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(address),
      birthDate,
      age,
      ageString,
      programDetail,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenItemDetailImplCopyWith<_$ChildrenItemDetailImpl> get copyWith =>
      __$$ChildrenItemDetailImplCopyWithImpl<_$ChildrenItemDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildrenItemDetailImplToJson(
      this,
    );
  }
}

abstract class _ChildrenItemDetail implements ChildrenItemDetail {
  const factory _ChildrenItemDetail(
      {final int? id,
      final String? name,
      final dynamic address,
      final DateTime? birthDate,
      final int? age,
      final String? ageString,
      final ProgramDetail? programDetail,
      final List<ChildrenItemDetailItem>? items}) = _$ChildrenItemDetailImpl;

  factory _ChildrenItemDetail.fromJson(Map<String, dynamic> json) =
      _$ChildrenItemDetailImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  dynamic get address;
  @override
  DateTime? get birthDate;
  @override
  int? get age;
  @override
  String? get ageString;
  @override
  ProgramDetail? get programDetail;
  @override
  List<ChildrenItemDetailItem>? get items;
  @override
  @JsonKey(ignore: true)
  _$$ChildrenItemDetailImplCopyWith<_$ChildrenItemDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildrenItemDetailItem _$ChildrenItemDetailItemFromJson(
    Map<String, dynamic> json) {
  return _ChildrenItemDetailItem.fromJson(json);
}

/// @nodoc
mixin _$ChildrenItemDetailItem {
  String? get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get quantity => throw _privateConstructorUsedError;
  String? get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildrenItemDetailItemCopyWith<ChildrenItemDetailItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenItemDetailItemCopyWith<$Res> {
  factory $ChildrenItemDetailItemCopyWith(ChildrenItemDetailItem value,
          $Res Function(ChildrenItemDetailItem) then) =
      _$ChildrenItemDetailItemCopyWithImpl<$Res, ChildrenItemDetailItem>;
  @useResult
  $Res call(
      {String? name, String? price, String? quantity, String? totalPrice});
}

/// @nodoc
class _$ChildrenItemDetailItemCopyWithImpl<$Res,
        $Val extends ChildrenItemDetailItem>
    implements $ChildrenItemDetailItemCopyWith<$Res> {
  _$ChildrenItemDetailItemCopyWithImpl(this._value, this._then);

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
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildrenItemDetailItemImplCopyWith<$Res>
    implements $ChildrenItemDetailItemCopyWith<$Res> {
  factory _$$ChildrenItemDetailItemImplCopyWith(
          _$ChildrenItemDetailItemImpl value,
          $Res Function(_$ChildrenItemDetailItemImpl) then) =
      __$$ChildrenItemDetailItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name, String? price, String? quantity, String? totalPrice});
}

/// @nodoc
class __$$ChildrenItemDetailItemImplCopyWithImpl<$Res>
    extends _$ChildrenItemDetailItemCopyWithImpl<$Res,
        _$ChildrenItemDetailItemImpl>
    implements _$$ChildrenItemDetailItemImplCopyWith<$Res> {
  __$$ChildrenItemDetailItemImplCopyWithImpl(
      _$ChildrenItemDetailItemImpl _value,
      $Res Function(_$ChildrenItemDetailItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$ChildrenItemDetailItemImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ChildrenItemDetailItemImpl implements _ChildrenItemDetailItem {
  const _$ChildrenItemDetailItemImpl(
      {this.name, this.price, this.quantity, this.totalPrice});

  factory _$ChildrenItemDetailItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildrenItemDetailItemImplFromJson(json);

  @override
  final String? name;
  @override
  final String? price;
  @override
  final String? quantity;
  @override
  final String? totalPrice;

  @override
  String toString() {
    return 'ChildrenItemDetailItem(name: $name, price: $price, quantity: $quantity, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenItemDetailItemImpl &&
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
  _$$ChildrenItemDetailItemImplCopyWith<_$ChildrenItemDetailItemImpl>
      get copyWith => __$$ChildrenItemDetailItemImplCopyWithImpl<
          _$ChildrenItemDetailItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildrenItemDetailItemImplToJson(
      this,
    );
  }
}

abstract class _ChildrenItemDetailItem implements ChildrenItemDetailItem {
  const factory _ChildrenItemDetailItem(
      {final String? name,
      final String? price,
      final String? quantity,
      final String? totalPrice}) = _$ChildrenItemDetailItemImpl;

  factory _ChildrenItemDetailItem.fromJson(Map<String, dynamic> json) =
      _$ChildrenItemDetailItemImpl.fromJson;

  @override
  String? get name;
  @override
  String? get price;
  @override
  String? get quantity;
  @override
  String? get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$ChildrenItemDetailItemImplCopyWith<_$ChildrenItemDetailItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProgramDetail _$ProgramDetailFromJson(Map<String, dynamic> json) {
  return _ProgramDetail.fromJson(json);
}

/// @nodoc
mixin _$ProgramDetail {
  String? get age => throw _privateConstructorUsedError;
  String? get program => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramDetailCopyWith<ProgramDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramDetailCopyWith<$Res> {
  factory $ProgramDetailCopyWith(
          ProgramDetail value, $Res Function(ProgramDetail) then) =
      _$ProgramDetailCopyWithImpl<$Res, ProgramDetail>;
  @useResult
  $Res call({String? age, String? program});
}

/// @nodoc
class _$ProgramDetailCopyWithImpl<$Res, $Val extends ProgramDetail>
    implements $ProgramDetailCopyWith<$Res> {
  _$ProgramDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = freezed,
    Object? program = freezed,
  }) {
    return _then(_value.copyWith(
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProgramDetailImplCopyWith<$Res>
    implements $ProgramDetailCopyWith<$Res> {
  factory _$$ProgramDetailImplCopyWith(
          _$ProgramDetailImpl value, $Res Function(_$ProgramDetailImpl) then) =
      __$$ProgramDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? age, String? program});
}

/// @nodoc
class __$$ProgramDetailImplCopyWithImpl<$Res>
    extends _$ProgramDetailCopyWithImpl<$Res, _$ProgramDetailImpl>
    implements _$$ProgramDetailImplCopyWith<$Res> {
  __$$ProgramDetailImplCopyWithImpl(
      _$ProgramDetailImpl _value, $Res Function(_$ProgramDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? age = freezed,
    Object? program = freezed,
  }) {
    return _then(_$ProgramDetailImpl(
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ProgramDetailImpl implements _ProgramDetail {
  const _$ProgramDetailImpl({this.age, this.program});

  factory _$ProgramDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramDetailImplFromJson(json);

  @override
  final String? age;
  @override
  final String? program;

  @override
  String toString() {
    return 'ProgramDetail(age: $age, program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramDetailImpl &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.program, program) || other.program == program));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, age, program);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramDetailImplCopyWith<_$ProgramDetailImpl> get copyWith =>
      __$$ProgramDetailImplCopyWithImpl<_$ProgramDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramDetailImplToJson(
      this,
    );
  }
}

abstract class _ProgramDetail implements ProgramDetail {
  const factory _ProgramDetail({final String? age, final String? program}) =
      _$ProgramDetailImpl;

  factory _ProgramDetail.fromJson(Map<String, dynamic> json) =
      _$ProgramDetailImpl.fromJson;

  @override
  String? get age;
  @override
  String? get program;
  @override
  @JsonKey(ignore: true)
  _$$ProgramDetailImplCopyWith<_$ProgramDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderResponseItem _$OrderResponseItemFromJson(Map<String, dynamic> json) {
  return _OrderResponseItem.fromJson(json);
}

/// @nodoc
mixin _$OrderResponseItem {
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseItemCopyWith<OrderResponseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseItemCopyWith<$Res> {
  factory $OrderResponseItemCopyWith(
          OrderResponseItem value, $Res Function(OrderResponseItem) then) =
      _$OrderResponseItemCopyWithImpl<$Res, OrderResponseItem>;
  @useResult
  $Res call({String? name, int? price, int? quantity, int? totalPrice});
}

/// @nodoc
class _$OrderResponseItemCopyWithImpl<$Res, $Val extends OrderResponseItem>
    implements $OrderResponseItemCopyWith<$Res> {
  _$OrderResponseItemCopyWithImpl(this._value, this._then);

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
abstract class _$$OrderResponseItemImplCopyWith<$Res>
    implements $OrderResponseItemCopyWith<$Res> {
  factory _$$OrderResponseItemImplCopyWith(_$OrderResponseItemImpl value,
          $Res Function(_$OrderResponseItemImpl) then) =
      __$$OrderResponseItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? price, int? quantity, int? totalPrice});
}

/// @nodoc
class __$$OrderResponseItemImplCopyWithImpl<$Res>
    extends _$OrderResponseItemCopyWithImpl<$Res, _$OrderResponseItemImpl>
    implements _$$OrderResponseItemImplCopyWith<$Res> {
  __$$OrderResponseItemImplCopyWithImpl(_$OrderResponseItemImpl _value,
      $Res Function(_$OrderResponseItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? price = freezed,
    Object? quantity = freezed,
    Object? totalPrice = freezed,
  }) {
    return _then(_$OrderResponseItemImpl(
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
class _$OrderResponseItemImpl implements _OrderResponseItem {
  const _$OrderResponseItemImpl(
      {this.name, this.price, this.quantity, this.totalPrice});

  factory _$OrderResponseItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderResponseItemImplFromJson(json);

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
    return 'OrderResponseItem(name: $name, price: $price, quantity: $quantity, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderResponseItemImpl &&
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
  _$$OrderResponseItemImplCopyWith<_$OrderResponseItemImpl> get copyWith =>
      __$$OrderResponseItemImplCopyWithImpl<_$OrderResponseItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderResponseItemImplToJson(
      this,
    );
  }
}

abstract class _OrderResponseItem implements OrderResponseItem {
  const factory _OrderResponseItem(
      {final String? name,
      final int? price,
      final int? quantity,
      final int? totalPrice}) = _$OrderResponseItemImpl;

  factory _OrderResponseItem.fromJson(Map<String, dynamic> json) =
      _$OrderResponseItemImpl.fromJson;

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
  _$$OrderResponseItemImplCopyWith<_$OrderResponseItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return _Parent.fromJson(json);
}

/// @nodoc
mixin _$Parent {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get photo => throw _privateConstructorUsedError;
  dynamic get nik => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  List<Guardian>? get guardians => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentCopyWith<Parent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCopyWith<$Res> {
  factory $ParentCopyWith(Parent value, $Res Function(Parent) then) =
      _$ParentCopyWithImpl<$Res, Parent>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic photo,
      dynamic nik,
      String? phoneNumber,
      String? gender,
      List<Guardian>? guardians});
}

/// @nodoc
class _$ParentCopyWithImpl<$Res, $Val extends Parent>
    implements $ParentCopyWith<$Res> {
  _$ParentCopyWithImpl(this._value, this._then);

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
    Object? nik = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? guardians = freezed,
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
              as dynamic,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      guardians: freezed == guardians
          ? _value.guardians
          : guardians // ignore: cast_nullable_to_non_nullable
              as List<Guardian>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParentImplCopyWith<$Res> implements $ParentCopyWith<$Res> {
  factory _$$ParentImplCopyWith(
          _$ParentImpl value, $Res Function(_$ParentImpl) then) =
      __$$ParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      dynamic photo,
      dynamic nik,
      String? phoneNumber,
      String? gender,
      List<Guardian>? guardians});
}

/// @nodoc
class __$$ParentImplCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$ParentImpl>
    implements _$$ParentImplCopyWith<$Res> {
  __$$ParentImplCopyWithImpl(
      _$ParentImpl _value, $Res Function(_$ParentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? nik = freezed,
    Object? phoneNumber = freezed,
    Object? gender = freezed,
    Object? guardians = freezed,
  }) {
    return _then(_$ParentImpl(
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
              as dynamic,
      nik: freezed == nik
          ? _value.nik
          : nik // ignore: cast_nullable_to_non_nullable
              as dynamic,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      guardians: freezed == guardians
          ? _value._guardians
          : guardians // ignore: cast_nullable_to_non_nullable
              as List<Guardian>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ParentImpl implements _Parent {
  const _$ParentImpl(
      {this.id,
      this.name,
      this.photo,
      this.nik,
      this.phoneNumber,
      this.gender,
      final List<Guardian>? guardians})
      : _guardians = guardians;

  factory _$ParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final dynamic photo;
  @override
  final dynamic nik;
  @override
  final String? phoneNumber;
  @override
  final String? gender;
  final List<Guardian>? _guardians;
  @override
  List<Guardian>? get guardians {
    final value = _guardians;
    if (value == null) return null;
    if (_guardians is EqualUnmodifiableListView) return _guardians;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Parent(id: $id, name: $name, photo: $photo, nik: $nik, phoneNumber: $phoneNumber, gender: $gender, guardians: $guardians)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.nik, nik) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            const DeepCollectionEquality()
                .equals(other._guardians, _guardians));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(nik),
      phoneNumber,
      gender,
      const DeepCollectionEquality().hash(_guardians));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      __$$ParentImplCopyWithImpl<_$ParentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentImplToJson(
      this,
    );
  }
}

abstract class _Parent implements Parent {
  const factory _Parent(
      {final int? id,
      final String? name,
      final dynamic photo,
      final dynamic nik,
      final String? phoneNumber,
      final String? gender,
      final List<Guardian>? guardians}) = _$ParentImpl;

  factory _Parent.fromJson(Map<String, dynamic> json) = _$ParentImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  dynamic get photo;
  @override
  dynamic get nik;
  @override
  String? get phoneNumber;
  @override
  String? get gender;
  @override
  List<Guardian>? get guardians;
  @override
  @JsonKey(ignore: true)
  _$$ParentImplCopyWith<_$ParentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Guardian _$GuardianFromJson(Map<String, dynamic> json) {
  return _Guardian.fromJson(json);
}

/// @nodoc
mixin _$Guardian {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuardianCopyWith<Guardian> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuardianCopyWith<$Res> {
  factory $GuardianCopyWith(Guardian value, $Res Function(Guardian) then) =
      _$GuardianCopyWithImpl<$Res, Guardian>;
  @useResult
  $Res call({int? id, String? name, String? parentId, String? phoneNumber});
}

/// @nodoc
class _$GuardianCopyWithImpl<$Res, $Val extends Guardian>
    implements $GuardianCopyWith<$Res> {
  _$GuardianCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
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
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GuardianImplCopyWith<$Res>
    implements $GuardianCopyWith<$Res> {
  factory _$$GuardianImplCopyWith(
          _$GuardianImpl value, $Res Function(_$GuardianImpl) then) =
      __$$GuardianImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? parentId, String? phoneNumber});
}

/// @nodoc
class __$$GuardianImplCopyWithImpl<$Res>
    extends _$GuardianCopyWithImpl<$Res, _$GuardianImpl>
    implements _$$GuardianImplCopyWith<$Res> {
  __$$GuardianImplCopyWithImpl(
      _$GuardianImpl _value, $Res Function(_$GuardianImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? parentId = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$GuardianImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GuardianImpl implements _Guardian {
  const _$GuardianImpl({this.id, this.name, this.parentId, this.phoneNumber});

  factory _$GuardianImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuardianImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? parentId;
  @override
  final String? phoneNumber;

  @override
  String toString() {
    return 'Guardian(id: $id, name: $name, parentId: $parentId, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuardianImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, parentId, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuardianImplCopyWith<_$GuardianImpl> get copyWith =>
      __$$GuardianImplCopyWithImpl<_$GuardianImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuardianImplToJson(
      this,
    );
  }
}

abstract class _Guardian implements Guardian {
  const factory _Guardian(
      {final int? id,
      final String? name,
      final String? parentId,
      final String? phoneNumber}) = _$GuardianImpl;

  factory _Guardian.fromJson(Map<String, dynamic> json) =
      _$GuardianImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get parentId;
  @override
  String? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$GuardianImplCopyWith<_$GuardianImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentChannel _$PaymentChannelFromJson(Map<String, dynamic> json) {
  return _PaymentChannel.fromJson(json);
}

/// @nodoc
mixin _$PaymentChannel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  PaymentMethod? get paymentMethod => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentChannelCopyWith<PaymentChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentChannelCopyWith<$Res> {
  factory $PaymentChannelCopyWith(
          PaymentChannel value, $Res Function(PaymentChannel) then) =
      _$PaymentChannelCopyWithImpl<$Res, PaymentChannel>;
  @useResult
  $Res call(
      {int? id, String? name, String? icon, PaymentMethod? paymentMethod});

  $PaymentMethodCopyWith<$Res>? get paymentMethod;
}

/// @nodoc
class _$PaymentChannelCopyWithImpl<$Res, $Val extends PaymentChannel>
    implements $PaymentChannelCopyWith<$Res> {
  _$PaymentChannelCopyWithImpl(this._value, this._then);

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
    Object? paymentMethod = freezed,
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
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res>? get paymentMethod {
    if (_value.paymentMethod == null) {
      return null;
    }

    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod!, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentChannelImplCopyWith<$Res>
    implements $PaymentChannelCopyWith<$Res> {
  factory _$$PaymentChannelImplCopyWith(_$PaymentChannelImpl value,
          $Res Function(_$PaymentChannelImpl) then) =
      __$$PaymentChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id, String? name, String? icon, PaymentMethod? paymentMethod});

  @override
  $PaymentMethodCopyWith<$Res>? get paymentMethod;
}

/// @nodoc
class __$$PaymentChannelImplCopyWithImpl<$Res>
    extends _$PaymentChannelCopyWithImpl<$Res, _$PaymentChannelImpl>
    implements _$$PaymentChannelImplCopyWith<$Res> {
  __$$PaymentChannelImplCopyWithImpl(
      _$PaymentChannelImpl _value, $Res Function(_$PaymentChannelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_$PaymentChannelImpl(
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
      paymentMethod: freezed == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$PaymentChannelImpl implements _PaymentChannel {
  const _$PaymentChannelImpl(
      {this.id, this.name, this.icon, this.paymentMethod});

  factory _$PaymentChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentChannelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? icon;
  @override
  final PaymentMethod? paymentMethod;

  @override
  String toString() {
    return 'PaymentChannel(id: $id, name: $name, icon: $icon, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentChannelImplCopyWith<_$PaymentChannelImpl> get copyWith =>
      __$$PaymentChannelImplCopyWithImpl<_$PaymentChannelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentChannelImplToJson(
      this,
    );
  }
}

abstract class _PaymentChannel implements PaymentChannel {
  const factory _PaymentChannel(
      {final int? id,
      final String? name,
      final String? icon,
      final PaymentMethod? paymentMethod}) = _$PaymentChannelImpl;

  factory _PaymentChannel.fromJson(Map<String, dynamic> json) =
      _$PaymentChannelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get icon;
  @override
  PaymentMethod? get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$PaymentChannelImplCopyWith<_$PaymentChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return _PaymentMethod.fromJson(json);
}

/// @nodoc
mixin _$PaymentMethod {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodImplCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$PaymentMethodImplCopyWith(
          _$PaymentMethodImpl value, $Res Function(_$PaymentMethodImpl) then) =
      __$$PaymentMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$PaymentMethodImplCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$PaymentMethodImpl>
    implements _$$PaymentMethodImplCopyWith<$Res> {
  __$$PaymentMethodImplCopyWithImpl(
      _$PaymentMethodImpl _value, $Res Function(_$PaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PaymentMethodImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$PaymentMethodImpl implements _PaymentMethod {
  const _$PaymentMethodImpl({this.id, this.name});

  factory _$PaymentMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentMethodImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'PaymentMethod(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      __$$PaymentMethodImplCopyWithImpl<_$PaymentMethodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentMethodImplToJson(
      this,
    );
  }
}

abstract class _PaymentMethod implements PaymentMethod {
  const factory _PaymentMethod({final int? id, final String? name}) =
      _$PaymentMethodImpl;

  factory _PaymentMethod.fromJson(Map<String, dynamic> json) =
      _$PaymentMethodImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$PaymentMethodImplCopyWith<_$PaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
