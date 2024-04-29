import 'package:get/get.dart';
import './z_score_controller.dart';

class ZScoreBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(ZScoreController());
    }
}