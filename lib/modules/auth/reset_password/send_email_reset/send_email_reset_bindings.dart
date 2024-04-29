import 'package:boonda_mitra/modules/auth/services/auth_services.dart';
import 'package:get/get.dart';
import './send_email_reset_controller.dart';

class SendEmailResetBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthServices());
    Get.put(SendEmailResetController());
  }
}
