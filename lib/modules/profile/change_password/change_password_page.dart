import 'package:boonda_mitra/common/widget/show_hide_password.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './change_password_controller.dart';

class ChangePasswordPage extends GetView<ChangePasswordController> {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("change_password".tr),
      ),
      persistentFooterButtons: [
        FilledButton(
                onPressed: () {
                  controller.save();
                },
                child: Text("save".tr))
            .marginSymmetric(horizontal: 20)
      ],
      body: FormBuilder(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              "password".tr,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Obx(() {
              return FormBuilderTextField(
                name: "password",
                key: controller.passworKey,
                decoration: InputDecoration(
                    hintText: "enter_your_password".tr,
                    suffixIcon: ShowHidePassword(
                        showPassword: controller.showPassword)),
                obscureText: controller.showPassword.value,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                ]),
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              );
            }),
            const SizedBox(
              height: 20,
            ),
            Text(
              "new_password".tr,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Obx(() {
              return FormBuilderTextField(
                name: "new_password",
                key: controller.newPassworKey,
                decoration: InputDecoration(
                    hintText: "enter_your_password".tr,
                    suffixIcon: ShowHidePassword(
                        showPassword: controller.showNewPassword)),
                obscureText: !controller.showNewPassword.value,
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(8),
                  FormBuilderValidators.maxLength(32),
                ]),
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
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
                  FormBuilderValidators.equal(
                      controller.newPassworKey.currentState?.value ?? "")
                ]),
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              );
            }),
          ],
        ),
      ).marginSymmetric(horizontal: 20),
    );
  }
}
