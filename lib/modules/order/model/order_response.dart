import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_response.freezed.dart';
part 'order_response.g.dart';

@freezed
class OrderResponse with _$OrderResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderResponse({
    int? id,
    DateTime? startDate,
    DateTime? endDate,
    dynamic specialRequest,
    String? price,
    String? discountAmount,
    String? discountPercent,
    dynamic voucherName,
    String? totalDiscount,
    dynamic fee,
    String? totalPrice,
    String? status,
    String? statusRefund,
    String? invoiceNumber,
    String? virtualAccountNumber,
    dynamic qrUrl,
    dynamic deeplinkUrl,
    dynamic paymentAt,
    DateTime? expiredAt,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic rejectedReason,
    dynamic rejectCategoryId,
    List<ChildrenItemDetail>? childrenItemDetails,
    List<OrderResponseItem>? items,
    PaymentChannel? paymentChannel,
    dynamic review,
    Daycare? daycare,
    Parent? parent,
  }) = _OrderResponse;

  factory OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseFromJson(json);
}

@freezed
class ChildrenItemDetail with _$ChildrenItemDetail {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChildrenItemDetail({
    int? id,
    String? name,
    dynamic address,
    DateTime? birthDate,
    int? age,
    String? ageString,
    ProgramDetail? programDetail,
    List<ChildrenItemDetailItem>? items,
  }) = _ChildrenItemDetail;

  factory ChildrenItemDetail.fromJson(Map<String, dynamic> json) =>
      _$ChildrenItemDetailFromJson(json);
}

@freezed
class ChildrenItemDetailItem with _$ChildrenItemDetailItem {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChildrenItemDetailItem({
    String? name,
    String? price,
    String? quantity,
    String? totalPrice,
  }) = _ChildrenItemDetailItem;

  factory ChildrenItemDetailItem.fromJson(Map<String, dynamic> json) =>
      _$ChildrenItemDetailItemFromJson(json);
}

@freezed
class ProgramDetail with _$ProgramDetail {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProgramDetail({
    String? age,
    String? program,
  }) = _ProgramDetail;

  factory ProgramDetail.fromJson(Map<String, dynamic> json) =>
      _$ProgramDetailFromJson(json);
}

@freezed
class Daycare with _$Daycare {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Daycare({
    int? id,
    String? name,
  }) = _Daycare;

  factory Daycare.fromJson(Map<String, dynamic> json) =>
      _$DaycareFromJson(json);
}

@freezed
class OrderResponseItem with _$OrderResponseItem {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderResponseItem({
    String? name,
    int? price,
    int? quantity,
    int? totalPrice,
  }) = _OrderResponseItem;

  factory OrderResponseItem.fromJson(Map<String, dynamic> json) =>
      _$OrderResponseItemFromJson(json);
}

@freezed
class Parent with _$Parent {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Parent({
    int? id,
    String? name,
    String? photo,
    dynamic nik,
    String? phoneNumber,
    String? gender,
    List<dynamic>? guardians,
  }) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}

@freezed
class PaymentChannel with _$PaymentChannel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PaymentChannel({
    int? id,
    String? name,
    String? icon,
    String? paymentType,
    bool? isActive,
    dynamic bankNumber,
    dynamic accountHolderName,
    String? paymentGuide,
    Daycare? paymentMethod,
  }) = _PaymentChannel;

  factory PaymentChannel.fromJson(Map<String, dynamic> json) =>
      _$PaymentChannelFromJson(json);
}
