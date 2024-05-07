import 'package:boonda_mitra/modules/landing/home/home_services.dart';
import 'package:boonda_mitra/modules/landing/profile/profile_controller.dart';
import 'package:boonda_mitra/modules/order/services/order_services.dart';
import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import './home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OrderServices());
    Get.put(HomeServices());
    Get.put(ProfileServices());
    Get.put(ProfileController());
    Get.put(HomeController());
  }
}
