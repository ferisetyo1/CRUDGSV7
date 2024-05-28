import 'package:get/get.dart';
import './kelas_controller.dart';

class KelasBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(KelasController());
    }
}