import 'package:boonda_mitra/modules/master_data/promo/promo_services.dart';
import 'package:get/get.dart';
import './detail_promo_controller.dart';

class DetailPromoBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(PromoServices());
    Get.put(DetailPromoController());
  }
}
