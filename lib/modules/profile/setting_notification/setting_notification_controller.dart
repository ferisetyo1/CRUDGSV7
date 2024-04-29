import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:boonda_mitra/modules/profile/setting_notification/model/notifikasi_setting_response.dart';
import 'package:get/get.dart';

class SettingNotificationController extends GetxController {
  final services = Get.find<ProfileServices>();
  final list = const AppState<List<NotifikasiSettingResponse>>.initial().obs;
  final settingAll = const AppState.initial().obs;
  final setting = const AppState.initial().obs;

  @override
  void onInit() {
    getNotifSetting();
    super.onInit();
  }

  void getNotifSetting() async {
    list.value = const AppState.loading();
    list.value = await services.getNotifikasiSetting();
  }

  Future<void> updateSettingAll(bool bool) async {
    settingAll.value = const AppState.loading();
    var val = await services.setNotificationSettingAll(bool).showLoading();
    settingAll.value = val;
    if (val.isSuccess()) {
      final currentList = list.value.data ?? [];
      final newList =
          currentList.map((data) => data.copyWith(isActive: bool)).toList();
      list.value = AppState.success(newList);
      Get.snackbar("Success", "Berhasil menyimpan pengaturan");
    } else if (val.isError()) {
      val.showError();
    } else if (val.isNoConnection()) {
      val.showNoConnection();
    }
  }

  Future<void> updateSetting(NotifikasiSettingResponse e, bool value) async {
    setting.value = const AppState.loading();
    var val =
        await services.setNotificationSetting(e.id ?? -1, value).showLoading();
    setting.value = val;
    if (val.isSuccess()) {
      final currentList = list.value.data ?? [];
      final newList = currentList
          .map(
              (data) => e.id == data.id ? data.copyWith(isActive: value) : data)
          .toList();
      list.value = AppState.success(newList);
      Get.snackbar("Success", "Berhasil menyimpan pengaturan");
    } else if (val.isError()) {
      val.showError();
    } else if (val.isNoConnection()) {
      val.showNoConnection();
    }
  }
}
