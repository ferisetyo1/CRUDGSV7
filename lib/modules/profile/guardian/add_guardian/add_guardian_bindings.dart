import 'package:boonda_mitra/modules/profile/guardian/services/guardian_services.dart';
import 'package:get/get.dart';
import './add_guardian_controller.dart';

class AddGuardianBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(GuardianServices());
    Get.put(AddGuardianController());
  }
}
