import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/model/orang_tua_response.dart';
import 'package:boonda_mitra/modules/master_data/orang_tua/services/orang_tua_services.dart';
import 'package:get/get.dart';

class DetailOrangTuaController extends GetxController {
  final service = Get.find<OrangTuaServices>();
  final state = AppState<OrangTuaResponse>.initial().obs;
  int? id;

  @override
  void onInit() {
    id = int.tryParse(Get.parameters["id"] ?? "");
    getDetail();
    super.onInit();
  }

  void getDetail() async {
    state.value = const AppState.loading();
    state.value = await service.getDetail(id: id ?? -1);
  }
}
