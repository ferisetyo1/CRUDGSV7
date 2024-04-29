import 'package:boonda_mitra/modules/landing/splash/splash_controller.dart';
import 'package:get/get.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
  }
}
