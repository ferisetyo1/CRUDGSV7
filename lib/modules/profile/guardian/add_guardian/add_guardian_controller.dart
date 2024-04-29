import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/config/state/app_state.dart';
import 'package:boonda_mitra/modules/profile/guardian/model/guardian_response.dart';
import 'package:boonda_mitra/modules/profile/guardian/services/guardian_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class AddGuardianController extends GetxController {
  final services = Get.find<GuardianServices>();
  final formKey = GlobalKey<FormBuilderState>();
  final nameKey = GlobalKey<FormBuilderFieldState>();
  final phoneKey = GlobalKey<FormBuilderFieldState>();
  final fotoKey = GlobalKey<FormBuilderFieldState>();

  Future<void> hapusData() async {
    final id = (Get.arguments as GuardianResponse).id ?? -1;
    final result = await services.removeGuardian(id).showLoading();
    if (result.isError()) {
      result.showError();
    } else if (result.isNoConnection()) {
      result.showNoConnection();
    } else {
      Get.back(result: true);
      Get.snackbar("Success", "Berhasil menghapus data");
    }
  }

  Future<void> simpanData() async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    final name = nameKey.currentState?.value;
    final phone = phoneKey.currentState?.value;
    final photo = fotoKey.currentState?.value;
    final AppState result;
    var isEdit = Get.arguments != null;
    if (isEdit) {
      result = await services
          .editGuardian(
              (Get.arguments as GuardianResponse).id ?? 0, name, photo, phone)
          .showLoading();
    } else {
      result = await services.addGuardian(name, photo, phone).showLoading();
    }
    if (result.isError()) {
      result.showError();
    } else if (result.isNoConnection()) {
      result.showNoConnection();
    } else {
      Get.back(result: true);
      Get.snackbar(
          "Success",
          isEdit
              ? "Berhasil mengupdate penjemput"
              : "Berhasil menambahkan penjemput");
    }
  }
}
