import 'package:boonda_mitra/config/bindings/app_bindings.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../config/state/app_state.dart';

class HomeServices extends GetxService {
  final dio = Get.find<Dio>();
  final storage = GetStorage();

  Future<AppState<int>> getMessageUnreadCount() async {
    if (!storage.isLogin) {
      return const AppState.empty();
    }
    return await dio.handleRequest(
      request: (helper) => helper.get("unread-message-count"),
      customSuccess: (data) => AppState.success(data.data ?? 0),
    );
  }

  Future<AppState<int>> getNotifUnreadCount() async {
    if (!storage.isLogin) {
      return const AppState.empty();
    }
    return await dio.handleRequest(
      request: (helper) => helper.get("unread-notification-count"),
      customSuccess: (data) => AppState.success(data.data ?? 0),
    );
  }
}
