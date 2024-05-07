import 'package:boonda_mitra/config/pages/pages.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:boonda_mitra/modules/auth/auth_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final box = GetStorage();

  void checkLogin() {
    if (!box.isLogin) {
      Get.offAllNamed(AuthPages.loginName);
    } else {
      Get.offAllNamed("${AppPages.mainName}/home"); // Arahkan ke layar utama
    }
  }
}
