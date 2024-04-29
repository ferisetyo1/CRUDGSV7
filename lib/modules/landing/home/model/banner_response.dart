import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_response.freezed.dart';
part 'banner_response.g.dart';

@freezed
class BannerResponse with _$BannerResponse {
  const factory BannerResponse({
    String? link,
    String? description,
  }) = _BannerResponse;

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}
