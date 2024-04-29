import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './change_email_controller.dart';

class ChangeEmailBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(ChangeEmailController());
  }
}
