import 'package:get/get.dart';
import './absensi_controller.dart';

class AbsensiBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(AbsensiController());
    }
}