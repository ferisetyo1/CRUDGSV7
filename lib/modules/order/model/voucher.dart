import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher.freezed.dart';
part 'voucher.g.dart';

@freezed
class Voucher with _$Voucher {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Voucher({
    int? id,
    String? name,
    String? description,
    DateTime? startDate,
    DateTime? endDate,
    int? amount,
    dynamic percent,
    String? photo,
    String? type,
    dynamic termAndConditionId,
    dynamic quota,
    int? maximumUser,
    int? maximumDiscount,
    int? manimumPrice,
    int? maximumPrice,
    String? code,
    bool? isNewUser,
  }) = _Voucher;

  factory Voucher.fromJson(Map<String, dynamic> json) =>
      _$VoucherFromJson(json);
}
