import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './change_password_controller.dart';

class ChangePasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(ChangePasswordController());
  }
}
