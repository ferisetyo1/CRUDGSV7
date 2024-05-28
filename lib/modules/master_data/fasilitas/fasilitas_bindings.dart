import 'package:get/get.dart';
import './fasilitas_controller.dart';

class FasilitasBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(FasilitasController());
    }
}