import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/order/filter_order/model/filterresult.dart';
import 'package:boonda_mitra/modules/order/model/income_data.dart';
import 'package:get/get.dart';

import '../services/order_services.dart';

class ListOrderController extends GetxController {
  final service = Get.find<OrderServices>();
  final order = const AppState<List<IncomeData>>.initial().obs;
  final filter = FilterOrderResult(
    start: DateTime.now().copyWith(day: 1),
    end: DateTime.now(),
  ).obs;

  @override
  void onInit() {
    getRekap();

    super.onInit();
  }

  getRekap() async {
    order.value = const AppState.loading();
    final resp = await service.incomeData(filter.value);
    order.value = resp;
  }
}
