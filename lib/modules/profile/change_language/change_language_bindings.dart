import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './change_language_controller.dart';

class ChangeLanguageBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(ChangeLanguageController());
  }
}
