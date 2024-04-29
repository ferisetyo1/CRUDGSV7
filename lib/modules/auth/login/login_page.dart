import 'dart:io';

import 'package:boonda_mitra/common/widget/show_hide_password.dart';
import 'package:boonda_mitra/modules/auth/login/login_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';

import '../../../common/style/color_pallete.dart';
import '../auth_pages.dart';

final formKey = GlobalKey<FormBuilderState>();

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: FormBuilder(
            key: formKey,
            child: Column(
              children: [
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "welcome".tr,
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Text("email".tr),
                      const SizedBox(height: 8),
                      FormBuilderTextField(
                        initialValue: controller.emailRemember,
                        name: "email",
                        decoration: InputDecoration(
                          hintText: "enter_your_email".tr,
                        ),
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.email(),
                          FormBuilderValidators.required()
                        ]),
                        onChanged: (value) {
                          controller.changeEmail(value);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("password".tr),
                      const SizedBox(height: 8),
                      Obx(() {
                        return FormBuilderTextField(
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
                          onChanged: (value) {
                            controller.changePassword(value);
                          },
                        );
                      }),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                controller.isRemember.toggle();
                              },
                              child: Ink(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: Obx(() {
                                        return Checkbox(
                                          value: controller.isRemember.value,
                                          onChanged: (value) {
                                            controller.isRemember.toggle();
                                          },
                                          // activeColor: ColorPalletes.toscaNormal,
                                        );
                                      }),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "remember".tr,
                                      style: const TextStyle(
                                          color: ColorPalletes.abuabuGelap),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          TextButton(
                              child: Text("forgot_password".tr),
                              onPressed: () async {
                                Get.toNamed(AuthPages.sendEmailResetName,
                                    preventDuplicates: false);
                              })
                        ],
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      FilledButton(
                        child: Text("sign_in".tr),
                        onPressed: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                          if (formKey.currentState?.validate() == false) {
                            return;
                          }
                          controller.loginAction();
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Visibility(
                        visible: kIsWeb
                            ? true
                            : !Platform.isIOS
                                ? true
                                : false,
                        child: OutlinedButton(
                          onPressed: () async {
                            FocusManager.instance.primaryFocus?.unfocus();
                            controller.loginGoogleAction();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const FaIcon(
                                FontAwesomeIcons.google,
                                size: 20,
                                color: ColorPalletes.toscaNormal,
                              ).marginOnly(right: 8),
                              Text("sign_in_with_google".tr),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            "${"dont_have_an_account".tr} ",
                            style: const TextStyle(
                                color: ColorPalletes.abuabuGelap),
                          ),
                          TextButton(
                              child: Text("sign_up".tr),
                              onPressed: () {
                                Get.toNamed(AuthPages.registerName,
                                    preventDuplicates: false);
                              })
                        ],
                      ),
                      // const SizedBox(
                      //   height: 16,
                      // )
                    ],
                  ),
                ),
                // Container(
                //   padding: const EdgeInsets.all(24),
                //   color: Colors.black,
                //   child: Column(
                //     mainAxisSize: MainAxisSize.min,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children:  [
                //       Text(
                //         "Layanan Pengaduan Konsumen",
                //         style: textStyle.copyWith(color: Colors.white),
                //       ),
                //       SizedBox(height: 8),
                //       CustomText(
                //           color: Colors.white,
                //           "DIREKTORAT JENDERAL PERLINDUNGAN KONSUMEN DAN TERTIB NIAGA KEMENTERIAN PERDAGANGAN REPUBLIK INDONESIA"),
                //       SizedBox(height: 8),
                //       CustomText(
                //           color: Colors.white,
                //           "Alamat : Gedung I Lantai 3, Jalan M.I. Ridwan Rais No. 5, Jakarta Pusat 10110\nNomor Kontak WhatsApp : 0853-1111-1010"),
                //     ],
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
