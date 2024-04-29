import 'package:get/get.dart';
import '../services/profile_services.dart';
import './about_app_controller.dart';

class AboutAppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(AboutAppController());
  }
}
