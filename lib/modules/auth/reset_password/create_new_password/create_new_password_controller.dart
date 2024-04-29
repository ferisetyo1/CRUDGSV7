import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/auth/auth_pages.dart';
import 'package:boonda_mitra/modules/auth/services/auth_services.dart';
import 'package:get/get.dart';

class CreateNewPasswordController extends GetxController {
  final service = Get.find<AuthServices>();
  RxString password = "".obs;
  RxString email = "".obs;
  RxString code = "".obs;
  RxBool showPassword = false.obs;
  RxBool showConfirmPassword = false.obs;
  Rx<AppState> state = const AppState.initial().obs;

  @override
  void onInit() {
    final email = Get.arguments?["email"] ?? "";
    final code = Get.arguments?["code"] ?? "";
    this.email.value = email;
    this.code.value = code;
    super.onInit();
  }

  void changePassword(String s) {
    password.value = s;
  }

  Future<void> resetPassword() async {
    state.value = const AppState.loading();
    final respon = await service
        .doResetPasswordCreate(email.value, code.value, password.value)
        .showLoading();
    state.value = respon;
    if (respon.isError()) {
      respon.showError();
    } else if (respon.isNoConnection()) {
      respon.showNoConnection();
    } else {
      Get.snackbar("success", "success_change_password".tr);
      Get.offAllNamed(AuthPages.loginName);
    }
  }
}
