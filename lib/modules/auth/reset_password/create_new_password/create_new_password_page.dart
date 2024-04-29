import 'package:boonda_mitra/modules/auth/auth_pages.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../common/style/color_pallete.dart';
import '../../../../common/widget/show_hide_password.dart';
import './create_new_password_controller.dart';

final formKey = GlobalKey<FormBuilderState>();

class CreateNewPasswordPage extends GetView<CreateNewPasswordController> {
  const CreateNewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: controller.email.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "create_newnpassword".tr,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                Column(
                  children: [
                    const SizedBox(width: double.infinity),
                    Text(
                      "empty_email_forgot_password".tr,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    FilledButton(
                      onPressed: () {
                        Get.offAllNamed(AuthPages.sendEmailResetName);
                      },
                      style: const ButtonStyle(
                          minimumSize: MaterialStatePropertyAll(
                              Size(double.minPositive, 52))),
                      child: Text("enter_mail_now".tr),
                    ),
                  ],
                )
              ],
            ).marginSymmetric(horizontal: 20)
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "create_newnpassword".tr,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "your_new_password_must_be_different_from_previous_used_passwords"
                      .tr,
                  style: const TextStyle(color: ColorPalletes.abuabuGelap),
                ),
                const SizedBox(height: 24),
                Text(
                  "password".tr,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                Obx(() {
                  return FormBuilderTextField(
                    name: "password",
                    decoration: InputDecoration(
                        hintText: "enter_your_password".tr,
                        suffixIcon: ShowHidePassword(
                            showPassword: controller.showPassword)),
                    obscureText: controller.showPassword.value,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(8),
                    ]),
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    onChanged: (value) {
                      controller.changePassword(value ?? "");
                    },
                  );
                }),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "confirm_password".tr,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8),
                Obx(() {
                  return FormBuilderTextField(
                    name: "confirm_password",
                    decoration: InputDecoration(
                        hintText: "enter_your_password".tr,
                        suffixIcon: ShowHidePassword(
                            showPassword: controller.showConfirmPassword)),
                    obscureText: !controller.showConfirmPassword.value,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(8),
                      FormBuilderValidators.maxLength(32),
                      FormBuilderValidators.equal(controller.password.value)
                    ]),
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    onChanged: (value) {},
                  );
                }),
                const SizedBox(height: 24),
                FilledButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == false) {
                      return;
                    }
                    controller.resetPassword();
                  },
                  child: Text("reset_password".tr),
                ),
              ],
            ).marginSymmetric(horizontal: 20),
    );
  }
}
