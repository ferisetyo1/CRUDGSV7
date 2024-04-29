// To parse this JSON data, do
//
//     final guardianResponse = guardianResponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'guardian_response.freezed.dart';
part 'guardian_response.g.dart';

@freezed
abstract class GuardianResponse with _$GuardianResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory GuardianResponse({
    required int? id,
    required String? name,
    required String? photo,
    required String? parentId,
    required DateTime? createdAt,
    required DateTime? updatedAt,
    required String? phoneNumber,
  }) = _GuardianResponse;

  factory GuardianResponse.fromJson(Map<String, dynamic> json) =>
      _$GuardianResponseFromJson(json);
}
