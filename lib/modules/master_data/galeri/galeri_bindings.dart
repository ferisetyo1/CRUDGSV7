import 'package:get/get.dart';
import './galeri_controller.dart';

class GaleriBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(GaleriController());
    }
}