import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './update_profil_controller.dart';

class UpdateProfilBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(UpdateProfilController());
  }
}
