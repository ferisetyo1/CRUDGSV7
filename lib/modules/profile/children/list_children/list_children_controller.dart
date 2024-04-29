import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/profile/children/model/children_response.dart';
import 'package:get/get.dart';

import '../services/children_services.dart';

class ListChildrenController extends GetxController {
  final services = Get.find<ChildrenServices>();
  final state = const AppState<List<ChildrenResponse>>.initial().obs;

  @override
  void onInit() {
    getChildren();
    super.onInit();
  }

  getChildren() async {
    state.value = const AppState.loading();
    final resp = await services.getChildren();
    state.value = resp;
  }
}
