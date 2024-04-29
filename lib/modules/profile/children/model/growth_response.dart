// To parse this JSON data, do
//
//     final growthResponse = growthResponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'growth_response.freezed.dart';
part 'growth_response.g.dart';

@freezed
abstract class GrowthResponse with _$GrowthResponse {
  const GrowthResponse._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GrowthResponse({
    required int? id,
    required String? age,
    required String? height,
    required String? weight,
    required String? headCircumtance,
    required String? type,
    required DateTime? measureDate,
    required String? unit,
  }) = _GrowthResponse;

  factory GrowthResponse.fromJson(Map<String, dynamic> json) =>
      _$GrowthResponseFromJson(json);
}
