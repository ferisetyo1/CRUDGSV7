import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'orang_tua_response.freezed.dart';
part 'orang_tua_response.g.dart';

@freezed
class OrangTuaResponse with _$OrangTuaResponse {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrangTuaResponse({
    int? id,
    String? name,
    dynamic gender,
    String? email,
    dynamic phoneNumber,
    dynamic photo,
    dynamic nik,
    dynamic address,
    dynamic birthdate,
    dynamic identityPhoto,
    String? verificationStatus,
    Daycare? daycare,
    List<Children>? childrens,
  }) = _OrangTuaResponse;

  factory OrangTuaResponse.fromJson(Map<String, dynamic> json) =>
      _$OrangTuaResponseFromJson(json);
}

@freezed
class Daycare with _$Daycare {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Daycare({
    int? id,
    String? name,
    String? address,
  }) = _Daycare;

  factory Daycare.fromJson(Map<String, dynamic> json) =>
      _$DaycareFromJson(json);
}

@freezed
class Children with _$Children {
  const factory Children(
      {int? id,
      String? name,
      String? nik,
      String? gender,
      DateTime? birthDate,
      String? parentId,
      String? photo}) = _Children;

  factory Children.fromJson(Map<String, dynamic> json) =>
      _$ChildrenFromJson(json);
}
