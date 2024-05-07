// To parse this JSON data, do
//
//     final detailPriceResponse = detailPriceResponseFromMap(jsonString);

// ignore_for_file: invalid_annotation_target, duplicate_ignore

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'detail_price_response.freezed.dart';
part 'detail_price_response.g.dart';

@freezed
abstract class DetailPriceResponse with _$DetailPriceResponse {
  const DetailPriceResponse._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DetailPriceResponse({
    int? totalPrice,
    List<DetailPrice>? detailPrice,
    List<DetailPrice>? otherPrice,
    bool? isUsePoint,
  }) = _DetailPriceResponse;

  factory DetailPriceResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailPriceResponseFromJson(json);

  String getPriceCurrency() =>
      NumberFormat.currency(locale: "id", symbol: "", decimalDigits: 0)
          .format(totalPrice);
}

@freezed
abstract class DetailPrice with _$DetailPrice {
  const DetailPrice._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DetailPrice({
    String? name,
    int? price,
    int? quantity,
    int? totalPrice,
  }) = _DetailPrice;

  factory DetailPrice.fromJson(Map<String, dynamic> json) =>
      _$DetailPriceFromJson(json);
}
