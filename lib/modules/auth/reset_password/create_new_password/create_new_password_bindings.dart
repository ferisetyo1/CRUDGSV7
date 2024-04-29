import 'package:get/get.dart';
import '../../services/auth_services.dart';
import './create_new_password_controller.dart';

class CreateNewPasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthServices());
    Get.put(CreateNewPasswordController());
  }
}
