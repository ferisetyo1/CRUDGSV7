import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'income_data.freezed.dart';
part 'income_data.g.dart';

@freezed
class IncomeData with _$IncomeData {
  const factory IncomeData({
    String? date,
    List<OrderResponse>? value,
  }) = _IncomeData;

  factory IncomeData.fromJson(Map<String, dynamic> json) =>
      _$IncomeDataFromJson(json);
}
