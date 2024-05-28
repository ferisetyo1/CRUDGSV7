import 'package:get/get.dart';
import './pengajar_controller.dart';

class PengajarBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(PengajarController());
    }
}