import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/master_data/promo/promo_services.dart';
import 'package:boonda_mitra/modules/order/model/voucher.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class PromoController extends GetxController {
  final services = Get.find<PromoServices>();
  RxList<Voucher> list = List<Voucher>.empty().obs;
  final searchState = const AppState<List<Voucher>>.initial().obs;
  RxInt page = 1.obs;
  CancelToken? cancelToken;

  getList({bool refresh = false}) async {
    if (refresh) {
      cancelToken?.cancel("");
      list.clear();
      page.value = 1;
    }
    if (page.value == 1) {
      searchState.value = const AppState.loading();
    }
    final newCancelToken = CancelToken();
    cancelToken = newCancelToken;
    var response = await services.getPromo(page.value, newCancelToken);
    searchState.value = response;
    if (!newCancelToken.isCancelled) {
      searchState.value = response;
      if (response.isSuccess()) {
        list.addAll(response.data ?? []);
        page++;
      }
    }
  }
}
