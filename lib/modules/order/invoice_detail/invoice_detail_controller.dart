import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:boonda_mitra/modules/order/services/order_services.dart';
import 'package:get/get.dart';

class InvoiceDetailController extends GetxController {
  final service = Get.find<OrderServices>();
  final order = const AppState<OrderResponse>.initial().obs;
  late int id;

  @override
  void onInit() {
    id = int.tryParse(Get.parameters["id"] ?? "") ?? -1;
    getOrder();
    super.onInit();
  }

  Future<void> getOrder() async {
    order.value = const AppState.loading();
    final resp = await service.getOrder(id: id);
    order.value = resp;
  }

  Future<void> cancel() async {
    final resp = await service.cancelOrder(id: id).showLoading();
    if (resp.isSuccess()) {
      getOrder();
    }
  }

  void terima() async {
    final resp = await service.accept(id).showLoading();
    if (resp.isSuccess()) {
      getOrder();
    } else {
      resp.showError();
    }
  }
}
