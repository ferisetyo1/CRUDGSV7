import 'package:get/get.dart';
import '../../services/auth_services.dart';
import './verify_code_controller.dart';

class VerifyCodeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthServices());
    Get.put(VerifyCodeController());
  }
}
