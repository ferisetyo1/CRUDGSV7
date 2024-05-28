import 'package:boonda_mitra/modules/master_data/promo/promo_services.dart';
import 'package:get/get.dart';
import 'promo_controller.dart';

class PromoBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(PromoServices());
    Get.put(PromoController());
  }
}
