import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/master_data/anak/model/children_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../services/children_services.dart';

class ListChildrenController extends GetxController {
  final services = Get.find<ChildrenServices>();
  RxList<ChildrenResponse> list = List<ChildrenResponse>.empty().obs;
  final searchState = const AppState<List<ChildrenResponse>>.initial().obs;
  RxInt page = 1.obs;
  CancelToken? cancelToken;
  RxString search = RxString("");

  @override
  void onInit() {
    getChildren();
    super.onInit();
  }

  getChildren({bool refresh = false}) async {
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
    var response = await services.getChildren(
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
