import 'package:get/get.dart';
import './aktivitas_controller.dart';

class AktivitasBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AktivitasController());
    }
}