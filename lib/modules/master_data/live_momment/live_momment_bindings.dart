import 'package:get/get.dart';
import './live_momment_controller.dart';

class LiveMommentBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(LiveMommentController());
    }
}