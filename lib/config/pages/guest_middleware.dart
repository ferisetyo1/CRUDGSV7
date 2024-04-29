import 'package:boonda_mitra/config/pages/pages.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GuestMiddleware extends GetMiddleware {
  final storage = GetStorage();

  @override
  RouteSettings? redirect(String? route) {
    return !isLogin ? null : const RouteSettings(name: AppPages.mainName);
  }

  bool get isLogin => storage.isLogin;
}
