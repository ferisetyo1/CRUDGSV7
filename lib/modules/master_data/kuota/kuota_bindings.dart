import 'package:get/get.dart';
import './kuota_controller.dart';

class KuotaBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(KuotaController());
    }
}