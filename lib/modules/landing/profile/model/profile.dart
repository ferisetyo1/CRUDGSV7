import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const Profile._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Profile({
    required int? id,
    required String? name,
    required String? gender,
    required String? email,
    required String? phoneNumber,
    required String? photo,
    required String? deleteAccountReason,
    required String? identityPhoto,
    required String? verificationStatus,
    required bool? isFreePassword,
    required String? lang,
    required String? rejectedReason,
    required dynamic userAppleId,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}
