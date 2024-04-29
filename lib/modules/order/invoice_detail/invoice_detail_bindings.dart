import 'package:boonda_mitra/modules/order/services/order_services.dart';
import 'package:get/get.dart';
import './invoice_detail_controller.dart';

class InvoiceDetailBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OrderServices());
    Get.put(InvoiceDetailController());
  }
}
