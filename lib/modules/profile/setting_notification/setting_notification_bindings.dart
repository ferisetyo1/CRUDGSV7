import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './setting_notification_controller.dart';

class SettingNotificationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileServices());
    Get.put(SettingNotificationController());
  }
}
