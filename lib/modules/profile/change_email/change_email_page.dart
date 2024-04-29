import 'package:boonda_mitra/common/widget/show_hide_password.dart';
import 'package:boonda_mitra/modules/landing/profile/model/profile.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './change_email_controller.dart';

class ChangeEmailPage extends GetView<ChangeEmailController> {
  const ChangeEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("change_email".tr),
      ),
      persistentFooterButtons: [
        FilledButton(
                onPressed: () {
                  controller.save(context);
                },
                child: Text("save".tr))
            .marginSymmetric(horizontal: 20)
      ],
      body: FormBuilder(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("email".tr),
            const SizedBox(height: 8),
            FormBuilderTextField(
              key: controller.emailKey,
              initialValue: (Get.arguments as Profile?)?.email ?? "",
              name: "email",
              decoration: InputDecoration(
                hintText: "enter_your_email".tr,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.email(),
                FormBuilderValidators.required()
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("password".tr),
            const SizedBox(height: 8),
            Obx(() {
              return FormBuilderTextField(
                key: controller.passwordKey,
                name: "password",
                decoration: InputDecoration(
                    hintText: "enter_your_password".tr,
                    suffixIcon: ShowHidePassword(
                      showPassword: controller.showPassword,
                    )),
                obscureText: controller.showPassword.value,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              );
            }),
          ],
        ).marginSymmetric(horizontal: 20, vertical: 16),
      ),
    );
  }
}
