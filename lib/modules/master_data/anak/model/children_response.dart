// To parse this JSON data, do
//
//     final quotaOvertimeResponse = quotaOvertimeResponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'children_response.freezed.dart';
part 'children_response.g.dart';

@freezed
abstract class ChildrenResponse with _$ChildrenResponse {
  const ChildrenResponse._();
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChildrenResponse(
      {int? id,
      String? nik,
      String? name,
      dynamic gender,
      DateTime? birthDate,
      String? photo,
      bool? isEnableOrder,
      int? age,
      String? ageString,
      Parent? parent,
      dynamic parentId}) = _ChildrenResponse;

  factory ChildrenResponse.fromJson(Map<String, dynamic> json) =>
      _$ChildrenResponseFromJson(json);
}

@freezed
class Parent with _$Parent {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Parent({
    int? id,
    String? name,
    String? gender,
    String? email,
    String? phoneNumber,
    String? photo,
    dynamic address,
    dynamic deleteAccountReason,
    String? verificationStatus,
    bool? isFreePassword,
    String? lang,
    dynamic rejectedReason,
    dynamic userAppleId,
  }) = _Parent;

  factory Parent.fromJson(Map<String, dynamic> json) => _$ParentFromJson(json);
}
