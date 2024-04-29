import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/profile/model/about.dart';
import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';

class PrivacyAppController extends GetxController {
  final services = Get.find<ProfileServices>();
  final state = Rx(const AppState<AboutResponse>.initial());

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    state.value = const AppState.loading();
    state.value = await services.getPrivacy();
  }
}
