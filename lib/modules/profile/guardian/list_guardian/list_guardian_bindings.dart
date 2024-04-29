import 'package:boonda_mitra/modules/profile/guardian/services/guardian_services.dart';
import 'package:get/get.dart';
import 'list_guardian_controller.dart';

class ListGuardianBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(GuardianServices());
    Get.put(ListGuardianController());
  }
}
