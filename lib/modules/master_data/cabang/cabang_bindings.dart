import 'package:get/get.dart';
import './cabang_controller.dart';

class CabangBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(CabangController());
    }
}