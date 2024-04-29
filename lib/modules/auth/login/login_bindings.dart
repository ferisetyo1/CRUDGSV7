import 'package:get/get.dart';

import '../services/auth_services.dart';
import 'login_controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthServices());
    Get.lazyPut(() => LoginController());
  }
}
