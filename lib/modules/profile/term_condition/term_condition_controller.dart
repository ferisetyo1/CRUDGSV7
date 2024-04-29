import 'package:get/get.dart';

import '../../../config/state/app_state.dart';
import '../model/about.dart';
import '../services/profile_services.dart';

class TermConditionController extends GetxController {
  final services = Get.find<ProfileServices>();
  final state = Rx(const AppState<AboutResponse>.initial());

  @override
  void onInit() {
    getData();
    super.onInit();
  }

  void getData() async {
    state.value = const AppState.loading();
    state.value = await services.getTnC();
  }
}
