import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/widget/form_builder_image_field.dart';
import 'package:boonda_mitra/modules/profile/guardian/model/guardian_response.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './add_guardian_controller.dart';

class AddGuardianPage extends GetView<AddGuardianController> {
  const AddGuardianPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(Get.arguments != null ? "Edit Penjemput" : 'Tambah Penjemput'),
      ),
      persistentFooterButtons: [
        Row(
          children: [
            if (Get.arguments != null)
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    controller.hapusData();
                  },
                  style: const ButtonStyle(
                      foregroundColor:
                          MaterialStatePropertyAll(ColorPalletes.merahNormal),
                      textStyle: MaterialStatePropertyAll(
                          TextStyle(color: ColorPalletes.merahNormal)),
                      side: MaterialStatePropertyAll(
                          BorderSide(color: ColorPalletes.merahNormal))),
                  child: const Text("Hapus"),
                ),
              ),
            if (Get.arguments != null) const SizedBox(width: 16),
            Expanded(
              child: FilledButton(
                  onPressed: () {
                    controller.simpanData();
                  },
                  child: Text("save".tr)),
            ),
          ],
        ).marginSymmetric(horizontal: 20)
      ],
      body: FormBuilder(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Nama").marginOnly(bottom: 8),
            FormBuilderTextField(
              name: "nama",
              key: controller.nameKey,
              initialValue: (Get.arguments as GuardianResponse?)?.name ?? "",
              validator: FormBuilderValidators.required(),
            ).marginOnly(bottom: 16),
            const Text("No. Telepon").marginOnly(bottom: 8),
            FormBuilderTextField(
              name: "telepon",
              initialValue:
                  (Get.arguments as GuardianResponse?)?.phoneNumber ?? "",
              key: controller.phoneKey,
              validator: FormBuilderValidators.required(),
            ).marginOnly(bottom: 16),
            const Text("Foto Identitas").marginOnly(bottom: 8),
            FormBuilderImageField(
              name: "foto",
              initialValue: (Get.arguments as GuardianResponse?)?.photo ?? "",
              formKey: controller.fotoKey,
            )
          ],
        ),
      ).marginSymmetric(horizontal: 20),
    );
  }
}
