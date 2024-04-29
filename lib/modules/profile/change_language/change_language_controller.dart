import 'package:boonda_mitra/common/widget/loading_widget.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:boonda_mitra/modules/landing/profile/model/profile.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../services/profile_services.dart';

class ChangeLanguageController extends GetxController {
  final services = Get.find<ProfileServices>();
  RxString lang = "".obs;
  Rx<AppState> state = const AppState.initial().obs;
  late Rx<Profile> profile;

  @override
  void onInit() {
    profile = Rx(GetStorage().profilData);
    lang.value = GetStorage().locale;
    super.onInit();
  }

  submit() async {
    state.value = const AppState.loading();
    var response = await Get.showOverlay(
        asyncFunction: () => services.submitProfile(
            name: profile.value.name,
            phone: profile.value.phoneNumber,
            gender: profile.value.gender,
            lang: lang.value.toUpperCase()),
        loadingWidget: const LoadingWidget());
    state.value = response;
    if (response.isSuccess()) {
      Get.back(result: "success");
      Get.snackbar("success", "berhail mengubah bahasa");
      Get.updateLocale(Locale(lang.value));
    } else if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    }
  }

  void updateLanguage(String? value) {
    lang.value = value ?? "id";
  }
}
