import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../common/style/color_pallete.dart';
import './send_email_reset_controller.dart';

final formKey = GlobalKey<FormBuilderState>();

class SendEmailResetPage extends GetView<SendEmailResetController> {
  const SendEmailResetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FormBuilder(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "resetnpassword".tr,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              "enter_the_email_associated_with_your_account_and_well_send_an_email_with_instructions_to_reset_your_password"
                  .tr,
              style: const TextStyle(color: ColorPalletes.abuabuGelap),
            ),
            const SizedBox(
              height: 24,
            ),
            Text("email".tr),
            const SizedBox(height: 8),
            FormBuilderTextField(
              name: "email",
              decoration: InputDecoration(
                hintText: "enter_your_email".tr,
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.email(),
                FormBuilderValidators.required()
              ]),
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              onChanged: (value) {
                controller.changeEmail(value);
              },
            ),
            const SizedBox(
              height: 24,
            ),
            FilledButton(
                child: Text("send".tr),
                onPressed: () {
                  if (formKey.currentState?.validate() == false) {
                    return;
                  }
                  controller.doSend();
                })
          ],
        ).marginSymmetric(horizontal: 20),
      ),
    );
  }
}
