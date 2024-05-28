import 'package:get/get.dart';
import './harga_controller.dart';

class HargaBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(HargaController());
    }
}