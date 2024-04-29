import 'dart:io';

import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart' hide Response, FormData;
import 'package:get_storage/get_storage.dart';
import 'package:jwt_decode/jwt_decode.dart';

import '../../common/utils/pretty_print_interceptor.dart';
import '../config.dart';
import '../constant.dart';
import '../data/base_data.dart';
import '../state/app_state.dart';

class AppBindings extends Bindings {
  final storage = GetStorage();
  @override
  void dependencies() {
    // Get.put(AppConnect(), permanent: true);
    Get.put(setupDio(), permanent: true);
  }

  // Alice alice() => Alice(
  //     showNotification: false,
  //     showInspectorOnShake: true,
  //     navigatorKey: globalNavigatorKey);

  Dio setupDio() {
    Dio dio = Dio();
    dio.setOptionsDio();

    dio.interceptors.add(QueuedInterceptorsWrapper(
      onRequest: (options, handler) async {
        if (clientId == "") {
          final newClientId = await getClientId();
          if (newClientId == null) {
            return handler.reject(DioException(
                requestOptions: options,
                message: "Gagal mengupdate versi client!"));
          }
          options.headers["client-id"] = newClientId;
        } else {
          options.headers["client-id"] = clientId;
        }

        if (isLogin) {
          options.headers["Authorization"] = "Bearer $token";
          if (isTokenExpired(token)) {
            final newToken = await getToken();
            if (newToken == null) {
              return handler.reject(DioException(
                  requestOptions: options,
                  message: "Sesi login telah berakhir, silahkan login ulang!"));
            }
            options.headers["Authorization"] = "Bearer $newToken";
          }
        }

        return handler.next(options);
      },
    ));

    return dio;
  }

  bool get isLogin => storage.isLogin;
  String get clientId =>
      Config.flavor != Flavor.dev ? Constant.clientIdProd : storage.clientId;
  String get token => storage.accessToken;
  String get refreshToken => storage.refreshToken;

  Future<String?> getClientId() async {
    final dio = Dio();
    await dio.setOptionsDio();
    try {
      final resp = await dio.get("clients");
      storage.writeClientId(resp.data?[0]?["client_id"] ?? "");
      return resp.data?[0]?["client_id"] ?? "";
    } catch (e) {
      return null;
    }
  }

  Future<String?> getToken() async {
    final dio = Dio();
    await dio.setOptionsDio();
    try {
      final response = await dio.post("refresh-token",
          data: FormData.fromMap({"refresh-token": refreshToken}),
          options: Options(headers: {
            "client-id": clientId,
            "Authorization": "Bearer $token",
          }));
      storage
        ..writeAccessToken(response.data["data"]["access_token"])
        ..writeRefreshToken(response.data["data"]["refresh_token"]);
      return response.data["data"]["access_token"];
    } on DioException catch (e) {
      storage
        ..removeAccessToken()
        ..removeRefreshToken()
        ..removeIsLogin();
      e.printError();
    } catch (e) {
      e.printError();
    }
    return null;
  }
}

Future<String> getUserAgent() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (kIsWeb) {
    return "Mozilla/5.0 (Macintosh; Intel Mac OS X 11_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.1.2 Safari/605.1.15";
  }

  if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    return iosInfo.utsname.machine;
  } else {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.model;
  }
}

Future<bool> hasNetwork() async {
  try {
    final connectivity = Connectivity();
    final result = await connectivity.checkConnectivity();
    return result != ConnectivityResult.none;
  } catch (e) {
    e.printError();
  }
  return false;
}

extension SetupDio on Dio {
  Future<void> setOptionsDio() async {
    String userAgent = await getUserAgent();

    const duration = Duration(milliseconds: 30000);

    options = BaseOptions(
        baseUrl: Constant.baseApiUrl,
        connectTimeout: duration,
        receiveTimeout: duration,
        sendTimeout: duration,
        headers: {
          'User-Agent': userAgent,
          'Accept': 'application/json',
        });
    interceptors.add(PrettyDioLogger(requestBody: true));
  }

  Future<AppState<T>> handleRequest<T>({
    required Future<Response<dynamic>> Function(Dio helper) request,
    required AppState<T> Function(BaseData data) customSuccess,
  }) async {
    try {
      final isConnected = await hasNetwork();
      if (!isConnected) {
        return const AppState.noConnection();
      }
      final resp = await request(this);
      final json = resp.data as Map<String, dynamic>;
      final data = BaseData.fromJson(json);
      if (data.status == false) {
        return AppState.error(data.message ?? "");
      }
      return customSuccess.call(data);
    } on DioException catch (e) {
      final resp = e.response;
      if (resp != null) {
        if (resp.data is Map<String, dynamic>) {
          final json = resp.data as Map<String, dynamic>;
          final data = BaseData.fromJson(json);
          if (data.code == "1006") {
            return const AppState.error(
                "Sesi login telah berakhir, silahkan login ulang!");
          }
          return AppState.error(data.message ?? "");
        }
        return AppState.error(e.message ?? "");
      }
      return AppState.error(e.message ?? "");
    } catch (e) {
      return AppState.error(e.toString());
    }
  }
}

bool isTokenExpired(String token) {
  DateTime? expiryDate = Jwt.getExpiryDate(token);
  bool isExpired = (expiryDate?.compareTo(DateTime.now()) ?? 0) < 0;
  return isExpired;
}
