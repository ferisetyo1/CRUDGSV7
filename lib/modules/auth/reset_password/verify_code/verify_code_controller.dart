import 'dart:async';

import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/modules/auth/auth_pages.dart';
import 'package:get/get.dart';

import '../../../../config/state/app_state.dart';
import '../../services/auth_services.dart';

class VerifyCodeController extends GetxController {
  final service = Get.find<AuthServices>();
  RxString email = "".obs;
  RxString code = "".obs;
  RxInt times = 0.obs;
  Rx<AppState> resendEmailState = const AppState.initial().obs;
  Rx<AppState> verifyState = const AppState.initial().obs;
  late Timer timer;

  @override
  void onInit() {
    final email = Get.arguments?["email"] ?? "";
    this.email.value = email;
    if (this.email.isNotEmpty) {
      startTimer();
    }
    super.onInit();
  }

  void startTimer() {
    times.value = 30;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (times.value == 0) {
        timer.cancel();
      } else {
        times--;
      }
    });
  }

  Future<void> resendEmail() async {
    resendEmailState.value = const AppState.loading();
    final response =
        await service.doSendResetPasswordMail(email.value).showLoading();
    resendEmailState.value = response;
    if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    } else {
      startTimer();
      Get.snackbar("success".tr, "success_resend_email".tr);
    }
  }

  Future<void> doVerif() async {
    verifyState.value = const AppState.loading();
    final response = await service
        .doResetPasswordVerify(email.value, code.value)
        .showLoading();
    verifyState.value = response;
    if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    } else {
      Get.toNamed(AuthPages.createNewPasswordName,
          preventDuplicates: false,
          arguments: {"email": email.value, "code": code.value});
    }
  }

  changeCode(code) {
    this.code.value = code;
  }
}
