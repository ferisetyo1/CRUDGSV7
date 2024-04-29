import 'package:boonda_mitra/config/bindings/app_bindings.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:boonda_mitra/modules/landing/profile/model/profile.dart';
import 'package:boonda_mitra/modules/profile/model/about.dart';
import 'package:boonda_mitra/modules/profile/setting_notification/model/notifikasi_setting_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;
import 'package:get_storage/get_storage.dart';
import 'package:image_cropper/image_cropper.dart';

class ProfileServices extends GetxService {
  final dio = Get.find<Dio>();
  final storage = GetStorage();

  Future<AppState<Profile>> getProfil() async {
    if (!storage.isLogin) {
      return const AppState.empty();
    }
    return await dio.handleRequest(
      request: (helper) => helper.get("profile"),
      customSuccess: (data) {
        final profilData = Profile.fromJson(data.data);
        storage.writeProfilData(profilData.toJson());
        return AppState.success(profilData);
      },
    );
  }

  Future<AppState> submitProfile(
      {CroppedFile? photo,
      String? name,
      String? gender,
      String? phone,
      String? lang}) async {
    Map<String, dynamic> map = {
      "name": name,
      "gender": gender,
      "phone_number": phone,
      "lang": lang
    };
    map.removeWhere((key, value) => value == null);
    if (photo != null) {
      map["photo"] = MultipartFile.fromBytes(await photo.readAsBytes(),
          filename: "photo.jpg");
    }
    return await dio.handleRequest(
      request: (helper) => helper.post("profile", data: FormData.fromMap(map)),
      customSuccess: (data) {
        // final profilData = Profile.fromJson(data.data);
        // storage.writeProfilData(profilData.toJson());
        return const AppState.success(true);
      },
    );
  }

  Future<AppState> updateEmail({
    String? email,
    String? password,
  }) async {
    Map<String, dynamic> map = {"email": email, "password": password};
    return await dio.handleRequest(
      request: (helper) => helper.put("email", data: map),
      customSuccess: (data) {
        return const AppState.success(true);
      },
    );
  }

  Future<AppState> updatePassword({
    String? newPassword,
    String? password,
  }) async {
    Map<String, dynamic> map = {
      "new_password": newPassword,
      "password": password
    };
    map.removeWhere((key, value) => value == null);
    return await dio.handleRequest(
      request: (helper) => helper.put("password", data: map),
      customSuccess: (data) {
        return const AppState.success(true);
      },
    );
  }

  Future<AppState<AboutResponse>> getPrivacy() async {
    return await dio.handleRequest(
      request: (helper) => helper.get("privacy"),
      customSuccess: (data) {
        return AppState.success(AboutResponse.fromJson(data.data));
      },
    );
  }

  Future<AppState<AboutResponse>> getAbout() async {
    return await dio.handleRequest(
      request: (helper) => helper.get("about"),
      customSuccess: (data) {
        return AppState.success(AboutResponse.fromJson(data.data));
      },
    );
  }

  Future<AppState<AboutResponse>> getTnC() async {
    return await dio.handleRequest(
      request: (helper) => helper.get("term_and_condition"),
      customSuccess: (data) {
        return AppState.success(AboutResponse.fromJson(data.data));
      },
    );
  }

  Future<AppState<List<NotifikasiSettingResponse>>>
      getNotifikasiSetting() async {
    return await dio.handleRequest(
      request: (helper) => helper.get("notification-setting"),
      customSuccess: (data) {
        Iterable<dynamic> dynList = data.data;
        final list =
            dynList.map((e) => NotifikasiSettingResponse.fromJson(e)).toList();
        return AppState.success(list);
      },
    );
  }

  Future<AppState> setNotificationSettingAll(bool bool) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("notification-setting",
          data: FormData.fromMap({"is_active": bool ? 1 : 0})),
      customSuccess: (data) => const AppState.success(true),
    );
  }

  Future<AppState> setNotificationSetting(int id, bool bool) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("notification-setting/$id",
          data: FormData.fromMap({"is_active": bool ? 1 : 0})),
      customSuccess: (data) => const AppState.success(true),
    );
  }

  Future<AppState> hapusAkun(reason) async {
    return await dio.handleRequest(
      request: (helper) =>
          helper.post("delete-account", data: {"reason": reason}),
      customSuccess: (data) => const AppState.success(true),
    );
  }
}
