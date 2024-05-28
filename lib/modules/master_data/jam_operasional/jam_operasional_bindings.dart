import 'package:get/get.dart';
import './jam_operasional_controller.dart';

class JamOperasionalBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(JamOperasionalController());
    }
}