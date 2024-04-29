import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/config/pages/pages.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:boonda_mitra/modules/auth/services/auth_services.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginController extends GetxController with StateMixin {
  final authServices = Get.find<AuthServices>();
  final googleSignIn = GoogleSignIn();

  RxString email = "".obs;
  RxString password = "".obs;
  RxBool showPassword = false.obs;
  RxBool isRemember = false.obs;
  Rx<AppState> loginState = const AppState.initial().obs;

  @override
  void onInit() {
    if (emailRemember.isNotEmpty) {
      email.value = emailRemember;
    }
    super.onInit();
  }

  Future<void> loginAction() async {
    loginState.value = const AppState.loading();
    final response = await authServices
        .loginAction(email.value, password.value, isRemember.value)
        .showLoading();
    loginState.value = response;
    if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    } else {
      Get.offAllNamed(AppPages.mainName);
    }
  }

  Future<void> loginGoogleAction() async {
    try {
      final signin = await googleSignIn.signIn();
      final auth = await signin?.authentication;
      if (signin != null && auth != null) {
        loginState.value = const AppState.loading();
        final response = await authServices
            .loginGoogleAction(auth.idToken, auth.accessToken)
            .showLoading();
        loginState.value = response;
        if (response.isError()) {
          response.showError();
        } else if (response.isNoConnection()) {
          response.showNoConnection();
        } else {
          Get.offAllNamed(AppPages.mainName);
        }
      }
    } catch (e) {
      Get.snackbar("Terjadi Kesalahan", e.toString());
    }
  }

  String get emailRemember => authServices.storage.emailRemember;

  void changeEmail(email) {
    this.email.value = email;
  }

  void changePassword(password) {
    this.password.value = password;
  }
}
