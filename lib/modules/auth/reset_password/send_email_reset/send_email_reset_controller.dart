import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/auth/auth_pages.dart';
import 'package:boonda_mitra/modules/auth/services/auth_services.dart';
import 'package:get/get.dart';

class SendEmailResetController extends GetxController {
  final service = Get.find<AuthServices>();
  RxString email = "".obs;
  Rx<AppState> state = const AppState.initial().obs;

  void changeEmail(email) {
    this.email.value = email;
  }

  Future<void> doSend() async {
    state.value = const AppState.loading();
    final response =
        await service.doSendResetPasswordMail(email.value).showLoading();
    state.value = response;
    if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    } else {
      Get.toNamed(AuthPages.verifyCodeName, arguments: {"email": email.value});
    }
  }
}
