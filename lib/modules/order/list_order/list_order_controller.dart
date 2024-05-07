import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/order/model/income_data.dart';
import 'package:get/get.dart';

import '../services/order_services.dart';

class ListOrderController extends GetxController {
  final service = Get.find<OrderServices>();
  final order = const AppState<List<IncomeData>>.initial().obs;
}
