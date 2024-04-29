import 'package:boonda_mitra/common/widget/text_span_button_boonda.dart';
import 'package:boonda_mitra/modules/auth/auth_pages.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../common/style/color_pallete.dart';
import './verify_code_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

final formKey = GlobalKey<FormBuilderState>();

class VerifyCodePage extends GetView<VerifyCodeController> {
  const VerifyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
      persistentFooterButtons: [
        if (controller.email.isNotEmpty)
          Obx(() {
            if (controller.resendEmailState.value.isLoading()) {
              return const SizedBox();
            }
            return RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "did_not_receive_the_code_check_the_spam_filter_or".tr),
              if (controller.times.value != 0)
                TextSpan(
                    text: "resend_code_in__sec".trParams({
                  "times":
                      "00:${controller.times.value.toString().padLeft(2, "0")}"
                }))
              else
                TextSpanButtonBoonda("resend_code".tr, () {
                  controller.resendEmail();
                }),
            ])).marginSymmetric(horizontal: 20, vertical: 8);
          })
      ],
      body: controller.email.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "verificationncode".tr,
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
          : FormBuilder(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "verificationncode".tr,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    "enter_the_verification_code_sent_to_your_email_address".tr,
                    style: const TextStyle(color: ColorPalletes.abuabuGelap),
                  ),
                  const SizedBox(height: 24),
                  PinCodeTextField(
                    appContext: context,
                    length: 6,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 8),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.equalLength(6)
                    ]),
                    onChanged: (text) {
                      controller.changeCode(text);
                    },
                    backgroundColor: Colors.transparent,
                    cursorColor: Colors.black,
                    enableActiveFill: true,
                    pinTheme: PinTheme(
                      borderRadius: BorderRadius.circular(8),
                      borderWidth: 0,
                      fieldWidth: 48,
                      fieldHeight: 64,
                      shape: PinCodeFieldShape.box,
                      activeColor: ColorPalletes.abuabuTerang,
                      activeFillColor: ColorPalletes.abuabuTerang,
                      inactiveColor: ColorPalletes.abuabuTerang,
                      inactiveFillColor: ColorPalletes.abuabuTerang,
                      disabledColor: ColorPalletes.abuabuTerang,
                      selectedColor: ColorPalletes.abuabuTerang,
                      selectedFillColor: ColorPalletes.abuabuTerang,
                      errorBorderColor: ColorPalletes.abuabuTerang,
                    ),
                  ),
                  const SizedBox(height: 24),
                  FilledButton(
                      onPressed: () {
                        if (formKey.currentState?.validate() == false) {
                          return;
                        }
                        controller.doVerif();
                      },
                      child: Text("submit".tr))
                ],
              ).marginSymmetric(horizontal: 20),
            ),
    );
  }
}
