import 'package:get/get.dart';
import './create_promo_controller.dart';

class CreatePromoBindings implements Bindings {
    @override
    void dependencies() {
        Get.put(CreatePromoController());
    }
}