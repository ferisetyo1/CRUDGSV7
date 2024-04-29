// To parse this JSON data, do
//
//     final paymentMethodResponse = paymentMethodResponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_method_response.freezed.dart';
part 'payment_method_response.g.dart';

@freezed
abstract class PaymentMethodResponse with _$PaymentMethodResponse {
  const factory PaymentMethodResponse({
    int? id,
    String? name,
    List<Channel>? channels,
  }) = _PaymentMethodResponse;

  factory PaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodResponseFromJson(json);
}

@freezed
abstract class Channel with _$Channel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Channel({
    int? id,
    String? name,
    String? icon,
    String? paymentType,
    String? bankNumber,
    String? accountHolderName,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
