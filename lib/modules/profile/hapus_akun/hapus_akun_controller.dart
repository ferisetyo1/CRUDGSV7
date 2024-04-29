import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/modules/profile/profile_pages.dart';
import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class HapusAkunController extends GetxController {
  final services = Get.find<ProfileServices>();
  final formKey = GlobalKey<FormBuilderState>();
  final reasonKey = GlobalKey<FormBuilderFieldState>();

  Future<void> submit() async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    final reason = reasonKey.currentState?.value;
    final response = await services.hapusAkun(reason).showLoading();
    if (response.isSuccess()) {
      Get.offAllNamed(ProfilePages.hapusAkun);
      Get.snackbar("Success", "Berhasil menghapus akun");
    } else if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    }
  }
}
