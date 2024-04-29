import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './profile_controller.dart';

class ProfileBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(ProfileController());
  }
}
