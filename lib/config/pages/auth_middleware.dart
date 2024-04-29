// ignore: implementation_imports
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../modules/auth/auth_pages.dart';

class AuthMiddleware extends GetMiddleware {
  final storage = GetStorage();

  @override
  RouteSettings? redirect(String? route) {
    return isLogin ? null : const RouteSettings(name: AuthPages.loginName);
  }

  bool get isLogin => storage.isLogin;
}
