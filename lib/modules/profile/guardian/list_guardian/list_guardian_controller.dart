import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/profile/guardian/model/guardian_response.dart';
import 'package:boonda_mitra/modules/profile/guardian/services/guardian_services.dart';
import 'package:get/get.dart';

class ListGuardianController extends GetxController {
  final GuardianServices services = Get.find();
  final state = const AppState<List<GuardianResponse>>.initial().obs;

  @override
  void onInit() {
    getList();
    super.onInit();
  }

  Future<void> getList() async {
    state.value = const AppState.loading();
    state.value = await services.getGuardians();
  }
}
