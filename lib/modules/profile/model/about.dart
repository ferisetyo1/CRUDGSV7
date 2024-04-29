import 'package:freezed_annotation/freezed_annotation.dart';

part 'about.freezed.dart';
part 'about.g.dart';

@freezed
abstract class AboutResponse with _$AboutResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AboutResponse({
    int? id,
    String? type,
    String? content,
    String? lang,
    String? appId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _AboutResponse;

  factory AboutResponse.fromJson(Map<String, dynamic> json) =>
      _$AboutResponseFromJson(json);
}
