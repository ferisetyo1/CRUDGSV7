import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/master_data/promo/promo_services.dart';
import 'package:boonda_mitra/modules/order/model/voucher.dart';
import 'package:get/get.dart';

class DetailPromoController extends GetxController {
  final services = Get.find<PromoServices>();
  final state = const AppState<Voucher>.initial().obs;
  int? id;

  @override
  void onInit() {
    id = int.tryParse(Get.parameters["id"] ?? "");
    fetchDetail();
    super.onInit();
  }

  Future<void> hapusPromo() async {
    final resp = await services.delete(id ?? -1).showLoading();
    if (resp.isNoConnection()) {
      resp.showNoConnection();
    }
    if (resp.isError()) {
      resp.showError();
    }
    if (resp.isSuccess()) {
      Get.snackbar("Success", "Success hapus promo");
      Get.back(result: true);
    }
  }

  Future<void> fetchDetail() async {
    state.value = const AppState.loading();
    state.value = await services.getPromoDetail(id ?? -1);
  }
}
