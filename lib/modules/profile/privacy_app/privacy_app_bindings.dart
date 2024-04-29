import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './privacy_app_controller.dart';

class PrivacyAppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(PrivacyAppController());
  }
}
