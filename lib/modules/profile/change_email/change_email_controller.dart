import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/common/widget/boonda_alert_dialog.dart';
import 'package:boonda_mitra/modules/landing/profile/model/profile.dart';
import 'package:boonda_mitra/modules/profile/services/profile_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class ChangeEmailController extends GetxController {
  ProfileServices services = Get.find();
  var emailKey = GlobalKey<FormBuilderFieldState>();
  var passwordKey = GlobalKey<FormBuilderFieldState>();
  var formKey = GlobalKey<FormBuilderState>();

  var showPassword = RxBool(false);

  Future<void> save(BuildContext context) async {
    if (formKey.currentState?.validate() == false) {
      return;
    }
    String email =
        emailKey.currentState?.value ?? (Get.arguments as Profile?)?.email;
    String password = passwordKey.currentState?.value;
    final response = await services
        .updateEmail(email: email, password: password)
        .showLoading();
    if (response.isSuccess()) {
      await showDialog(
        // ignore: use_build_context_synchronously
        context: context,
        builder: (context) {
          return BoondaAlertDialog(
            title: "need_verification".tr,
            content:
                "weve_sent_a_confirmation_email_please_check_your_email_or_spam_and_click_on_the_link_to_proceed_and_verify_your_email"
                    .tr,
            btnTextPositive: "Close",
          );
        },
      );
      Get.back(result: true);
    } else if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    }
  }
}
