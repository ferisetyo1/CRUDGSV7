import 'package:boonda_mitra/config/bindings/app_bindings.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide FormData;
import 'package:get_storage/get_storage.dart';

class AuthServices extends GetxService {
  final storage = GetStorage();
  final dio = Get.find<Dio>();

  Future<AppState> loginAction(email, password, bool isRemember) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("login",
          data: FormData.fromMap({"email": email, "password": password})),
      customSuccess: (data) {
        if (isRemember) {
          storage.writeEmailRemember(email);
        }
        storage.writeIsLogin(true);
        storage.writeAccessToken(data.data?["access_token"] ?? "");
        storage.writeRefreshToken(data.data?["refresh_token"] ?? "");
        return AppState.success(data);
      },
    );
  }

  Future<AppState> loginGoogleAction(idToken, accessToken) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("loginGoogle",
          data: FormData.fromMap(
              {"id": idToken, "client_type": GetPlatform.isIOS ? 2 : 3}),
          options: Options(headers: {
            'Authorization': "Bearer $accessToken",
          })),
      customSuccess: (data) {
        storage.writeIsLogin(true);
        storage.writeAccessToken(data.data?["access_token"] ?? "");
        storage.writeRefreshToken(data.data?["refresh_token"] ?? "");
        return AppState.success(data);
      },
    );
  }

  Future<AppState> registerAction(name, email, password) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("registration",
          data: FormData.fromMap(
              {"name": name, "email": email, "password": password})),
      customSuccess: (data) => const AppState.success(true),
    );
  }

  Future<AppState> resendRegisterEmailAction(email) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("resend-registration-email",
          data: FormData.fromMap({
            "email": email,
          })),
      customSuccess: (data) => const AppState.success(true),
    );
  }

  Future<AppState> doSendResetPasswordMail(String email) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("reset-password",
          data: FormData.fromMap({
            "email": email,
          })),
      customSuccess: (data) => const AppState.success(true),
    );
  }

  Future<AppState> doResetPasswordVerify(String email, String code) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("reset-password/verify",
          data: FormData.fromMap({"email": email, "code": code})),
      customSuccess: (data) => const AppState.success(true),
    );
  }

  Future<AppState> doResetPasswordCreate(
      String email, String code, String newPass) async {
    return await dio.handleRequest(
      request: (helper) => helper.post("new-password",
          data: FormData.fromMap(
              {"email": email, "code": code, "password": newPass})),
      customSuccess: (data) => const AppState.success(true),
    );
  }
}
