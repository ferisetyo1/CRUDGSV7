import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './term_condition_controller.dart';

class TermConditionBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(TermConditionController());
  }
}
