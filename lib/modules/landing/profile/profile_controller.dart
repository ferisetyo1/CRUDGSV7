import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/config/storage/storage_helper.dart';
import 'package:boonda_mitra/modules/landing/profile/model/profile.dart';
import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class ProfileController extends GetxController {
  final service = Get.find<ProfileServices>();
  RxBool expandPersonalChild = false.obs;
  RxBool expandSettingChild = false.obs;
  RxBool expandHistoryChild = false.obs;
  RxBool expandFavoriteChild = false.obs;
  Rx<AppState<Profile>> profilData = const AppState<Profile>.initial().obs;
  Rx<PackageInfo> packageInfo = PackageInfo(
          appName: "Boonda",
          packageName: "com.gti.boonda",
          version: "1.1.0",
          buildNumber: "64")
      .obs;

  @override
  void onInit() {
    getVersion();
    getProfile();
    super.onInit();
  }

  Future<void> getProfile() async {
    profilData.value = const AppState.loading();
    profilData.value = await service.getProfil();
  }

  void logout() {
    profilData.value = const AppState.empty();
    service.storage
      ..removeAccessToken()
      ..removeProfilData()
      ..removeRefreshToken()
      ..removeIsLogin();
  }

  void getVersion() async {
    packageInfo.value = await PackageInfo.fromPlatform();
  }
}
