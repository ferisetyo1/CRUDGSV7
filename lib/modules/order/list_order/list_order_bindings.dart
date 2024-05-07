import 'package:boonda_mitra/modules/order/services/order_services.dart';
import 'package:get/get.dart';
import './list_order_controller.dart';

class ListOrderBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OrderServices());
    Get.put(ListOrderController());
  }
}
