import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  final services = Get.find<ProfileServices>();
  var formKey = GlobalKey<FormBuilderState>();
  var passworKey = GlobalKey<FormBuilderFieldState>();
  var newPassworKey = GlobalKey<FormBuilderFieldState>();
  var showPassword = RxBool(false);
  var showNewPassword = RxBool(false);
  var showConfirmPassword = RxBool(false);

  Future<void> save() async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    String password = passworKey.currentState?.value;
    String newPassword = newPassworKey.currentState?.value;
    final response = await services
        .updatePassword(newPassword: newPassword, password: password)
        .showLoading();
    if (response.isSuccess()) {
      Get.back(result: true);
      Get.snackbar("Sukses", "Berhasil mengganti password");
    } else if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    }
  }
}
