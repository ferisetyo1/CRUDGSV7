import 'dart:io';

import 'package:boonda_mitra/config/bindings/app_bindings.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/profile/guardian/model/guardian_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart' hide FormData, MultipartFile;

class GuardianServices extends GetxService {
  final dio = Get.find<Dio>();

  Future<AppState<List<GuardianResponse>>> getGuardians() async {
    return await dio.handleRequest(
      request: (helper) => helper.get("guardians"),
      customSuccess: (data) {
        Iterable<dynamic> dynList = data.data;
        if (dynList.isEmpty) {
          return const AppState.empty();
        }
        final list = dynList.map((e) => GuardianResponse.fromJson(e)).toList();
        return AppState.success(list);
      },
    );
  }

  Future<AppState> removeGuardian(int id) async {
    return await dio.handleRequest(
      request: (helper) => helper.delete("guardian/$id"),
      customSuccess: (data) {
        return const AppState.success(true);
      },
    );
  }

  Future<AppState> addGuardian(String name, String photo, String phone) async {
    return await dio.handleRequest(
      request: (helper) async => helper.post("guardian",
          data: FormData.fromMap({
            "photo": MultipartFile.fromBytes(await File(photo).readAsBytes(),
                filename: "photo.jpg"),
            "name": name,
            "phone_number": phone
          })),
      customSuccess: (data) {
        return const AppState.success(true);
      },
    );
  }

  Future<AppState> editGuardian(
      int id, String name, String photo, String phone) async {
    return await dio.handleRequest(
      request: (helper) async => helper.post("guardian/$id",
          data: FormData.fromMap({
            "photo": MultipartFile.fromBytes(await File(photo).readAsBytes(),
                filename: "photo.jpg"),
            "name": name,
            "phone_number": phone
          })),
      customSuccess: (data) {
        return const AppState.success(true);
      },
    );
  }
}
