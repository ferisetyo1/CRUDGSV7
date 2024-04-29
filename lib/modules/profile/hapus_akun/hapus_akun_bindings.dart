import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './hapus_akun_controller.dart';

class HapusAkunBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(HapusAkunController());
  }
}
