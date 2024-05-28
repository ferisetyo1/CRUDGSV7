import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/model/orang_tua_response.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/services/orang_tua_services.dart';
import 'package:boonda_mitra/modules/order/filter_order/model/filterresult.dart';
import 'package:boonda_mitra/modules/master_data/anak/model/children_response.dart';
import 'package:boonda_mitra/modules/master_data/anak/services/children_services.dart';
import 'package:get/get.dart';

class FilterOrderController extends GetxController {
  final repoOrtu = Get.find<OrangTuaServices>();
  final repoAnak = Get.find<ChildrenServices>();
  final parentState = const AppState<List<OrangTuaResponse>>.initial().obs;
  final childState = const AppState<List<ChildrenResponse>>.initial().obs;
  FilterOrderResult? initial;

  @override
  void onInit() {
    try {
      initial = Get.arguments;
    } catch (e) {
      e.printError();
    }
    getParent();
    super.onInit();
  }

  Future<void> getParent() async {
    parentState.value = const AppState.loading();
    parentState.value = await repoOrtu.getList();
  }

  Future<void> getChildren(int idParent) async {
    childState.value = const AppState.loading();
    childState.value = await repoAnak.getChildren(idParent: idParent);
  }
}
