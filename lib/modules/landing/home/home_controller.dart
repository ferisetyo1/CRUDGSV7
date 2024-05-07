import 'dart:ffi';

import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/landing/home/home_services.dart';
import 'package:boonda_mitra/modules/order/model/order_response.dart';
import 'package:boonda_mitra/modules/order/services/order_services.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final homeService = Get.find<HomeServices>();
  final orderService = Get.find<OrderServices>();
  final notifState = const AppState<int>.initial().obs;
  final revenueState = const AppState<int>.initial().obs;
  final orderState = const AppState<List<OrderResponse>>.initial().obs;

  @override
  void onInit() {
    getNotifCount();
    getRevenue();
    getOrders();
    super.onInit();
  }

  Future<void> getNotifCount() async {
    notifState.value = const AppState.loading();
    notifState.value = await homeService.getNotifUnreadCount();
  }

  Future<void> getOrders() async {
    orderState.value = const AppState.loading();
    orderState.value = await orderService.getOrders(page: 1, limit: 5);
  }

  Future<void> getRevenue() async {
    revenueState.value = const AppState.loading();
    revenueState.value = await orderService.totalRevenue();
  }
}
