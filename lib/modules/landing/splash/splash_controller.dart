import 'package:boonda_mitra/config/pages/pages.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final box = GetStorage();

  void checkFirstInstall() {
    bool isFirstInstall = box.firstInstall;

    if (isFirstInstall) {
      Get.offAllNamed(AppPages.onBoardingName); // Arahkan ke layar onboarding
    } else {
      Get.offAllNamed("${AppPages.mainName}/home"); // Arahkan ke layar utama
    }
  }
}
