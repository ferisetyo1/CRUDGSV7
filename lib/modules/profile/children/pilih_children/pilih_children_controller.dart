import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/profile/children/model/children_response.dart';
import 'package:boonda_mitra/modules/profile/children/services/children_services.dart';
import 'package:get/get.dart';

class PilihChildrenController extends GetxController {
  final services = Get.find<ChildrenServices>();
  final state = const AppState<List<ChildrenResponse>>.initial().obs;
  final selected = RxList<ChildrenResponse>();

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

  setSelected(ChildrenResponse child) {
    int position = selected.indexWhere((element) => element.id == child.id);
    if (position == -1) {
      selected.add(child);
    } else {
      selected.removeAt(position);
    }
  }
}
