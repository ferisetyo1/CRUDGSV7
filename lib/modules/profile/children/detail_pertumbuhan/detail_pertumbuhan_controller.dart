import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/profile/children/model/growth_response.dart';
import 'package:boonda_mitra/modules/profile/children/services/children_services.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DetailPertumbuhanController extends GetxController {
  final services = Get.find<ChildrenServices>();

  RxList<GrowthResponse> beratList = List<GrowthResponse>.empty().obs;
  final beratState = const AppState<List<GrowthResponse>>.initial().obs;
  RxInt beratPage = 1.obs;
  CancelToken? beratToken;

  RxList<GrowthResponse> tinggiList = List<GrowthResponse>.empty().obs;
  final tinggiState = const AppState<List<GrowthResponse>>.initial().obs;
  RxInt tinggiPage = 1.obs;
  CancelToken? tinggiToken;

  RxList<GrowthResponse> kepalaList = List<GrowthResponse>.empty().obs;
  final kepalaState = const AppState<List<GrowthResponse>>.initial().obs;
  RxInt kepalaPage = 1.obs;
  CancelToken? kepalaToken;
  late final int idChild;
  @override
  void onInit() {
    idChild = int.tryParse(Get.parameters["id_anak"] ?? "") ?? -1;
    super.onInit();
  }

  Future<void> getBerat({bool refresh = false}) async {
    if (refresh) {
      beratToken?.cancel("");
      beratList.clear();
      beratPage.value = 1;
    }
    if (beratPage.value == 1) {
      beratState.value = const AppState.loading();
    }
    final newCancelToken = CancelToken();
    beratToken = newCancelToken;

    var response = await services.getGrowth(
      idChild: idChild,
      cancelToken: beratToken,
      page: beratPage.value,
    );

    if (!newCancelToken.isCancelled) {
      beratState.value = response;
      if (response.isSuccess()) {
        beratList.addAll(response.data ?? []);
        beratPage++;
      }
    }
  }

  Future<void> getTinggi({bool refresh = false}) async {
    if (refresh) {
      tinggiToken?.cancel("");
      tinggiList.clear();
      tinggiPage.value = 1;
    }
    if (tinggiPage.value == 1) {
      tinggiState.value = const AppState.loading();
    }
    final newCancelToken = CancelToken();
    tinggiToken = newCancelToken;
    var response = await services.getGrowth(
        idChild: idChild,
        cancelToken: tinggiToken,
        page: tinggiPage.value,
        type: "height");

    if (!newCancelToken.isCancelled) {
      tinggiState.value = response;
      if (response.isSuccess()) {
        tinggiList.addAll(response.data ?? []);
        tinggiPage++;
      }
    }
  }

  Future<void> getKepala({bool refresh = false}) async {
    if (refresh) {
      kepalaToken?.cancel("");
      kepalaList.clear();
      kepalaPage.value = 1;
    }
    if (kepalaPage.value == 1) {
      kepalaState.value = const AppState.loading();
    }
    final newCancelToken = CancelToken();
    kepalaToken = newCancelToken;
    var response = await services.getGrowth(
        idChild: idChild,
        cancelToken: kepalaToken,
        page: kepalaPage.value,
        type: "head");

    if (!newCancelToken.isCancelled) {
      kepalaState.value = response;
      if (response.isSuccess()) {
        kepalaList.addAll(response.data ?? []);
        kepalaPage++;
      }
    }
  }
}
