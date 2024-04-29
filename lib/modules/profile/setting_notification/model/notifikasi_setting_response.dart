// To parse this JSON data, do
//
//     final notifikasiSettingResponse = notifikasiSettingResponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifikasi_setting_response.freezed.dart';
part 'notifikasi_setting_response.g.dart';

@freezed
class NotifikasiSettingResponse with _$NotifikasiSettingResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NotifikasiSettingResponse({
    int? id,
    String? name,
    bool? isActive,
  }) = _NotifikasiSettingResponse;

  factory NotifikasiSettingResponse.fromJson(Map<String, dynamic> json) =>
      _$NotifikasiSettingResponseFromJson(json);
}
