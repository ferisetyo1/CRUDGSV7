import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/model/orang_tua_response.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/services/orang_tua_services.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class OrangTuaController extends GetxController {
  final services = Get.find<OrangTuaServices>();
  RxList<OrangTuaResponse> list = List<OrangTuaResponse>.empty().obs;
  final searchState = const AppState<List<OrangTuaResponse>>.initial().obs;
  RxInt page = 1.obs;
  CancelToken? cancelToken;
  RxString search = RxString("");

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
    var response = await services.getList(
        keyword: search.value, page: page.value, cancelToken: newCancelToken);
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
