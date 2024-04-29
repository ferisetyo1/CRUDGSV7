// To parse this JSON data, do
//
//     final chartResponse = chartResponseFromMap(jsonString);

import 'package:boonda_mitra/modules/profile/children/model/growth_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_response.freezed.dart';
part 'chart_response.g.dart';

@freezed
abstract class ChartResponse with _$ChartResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChartResponse({
    required List<GrowthResponse>? children,
    required List<GrowthResponse>? idealGrowth,
  }) = _ChartResponse;

  factory ChartResponse.fromJson(Map<String, dynamic> json) =>
      _$ChartResponseFromJson(json);
}
