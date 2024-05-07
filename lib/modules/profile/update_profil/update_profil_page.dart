import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../common/style/color_pallete.dart';
import './update_profil_controller.dart';

final formKey = GlobalKey<FormBuilderState>();

class UpdateProfilPage extends GetView<UpdateProfilController> {
  const UpdateProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("edit_profile".tr),
      ),
      persistentFooterButtons: [
        FilledButton(
                onPressed: () {
                  if (formKey.currentState
                          ?.validate(autoScrollWhenFocusOnInvalid: true) ==
                      true) {
                    controller.submit();
                  }
                },
                child: Text("save".tr))
            .marginSymmetric(horizontal: 20, vertical: 8)
      ],
      body: FormBuilder(
        key: formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    controller.pickFiles(context);
                  },
                  child: SizedBox(
                    width: 74,
                    height: 74,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          clipBehavior: Clip.hardEdge,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8)),
                          child: Obx(() => _image()),
                        ),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            backgroundColor: ColorPalletes.toscaTerang,
                            radius: 12,
                            child: Icon(
                              Icons.camera_alt,
                              size: 16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Text("name".tr),
              const SizedBox(height: 8),
              FormBuilderTextField(
                name: "name",
                initialValue: controller.profile.value?.name ?? "",
                decoration: InputDecoration(hintText: "parents_name".tr),
                validator: FormBuilderValidators.required(),
                onChanged: (value) {
                  controller.onChangeName(value);
                },
              ),
              const SizedBox(height: 16),
              Text("gender".tr),
              const SizedBox(height: 8),
              FormBuilderRadioGroup(
                  name: "gender",
                  initialValue: controller.profile.value?.gender ?? "",
                  validator: FormBuilderValidators.required(),
                  onChanged: (value) {
                    controller.onChangeGender(value);
                  },
                  decoration: const InputDecoration(
                      fillColor: Colors.transparent,
                      contentPadding: EdgeInsets.symmetric(horizontal: 8),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      )),
                  options: {"1": "male".tr, "2": "female".tr}
                      .entries
                      .map((e) => FormBuilderFieldOption(
                            value: e.key,
                            child: Text(e.value),
                          ))
                      .toList(growable: false)),
              const SizedBox(height: 16),
              Text("phone_number".tr),
              const SizedBox(height: 8),
              FormBuilderTextField(
                name: "phone",
                initialValue: controller.profile.value?.phoneNumber ?? "",
                validator: FormBuilderValidators.required(),
                onChanged: (value) {
                  controller.onChangePhone(value);
                },
                decoration:
                    InputDecoration(hintText: "parents_phone_number".tr),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _image() {
    if (controller.croppedFile.value != null &&
        controller.pickedFile.value != null) {
      final path = controller.croppedFile.value?.path ?? "";
      return kIsWeb ? Image.network(path) : Image.file(File(path));
    } else if (controller.profile.value?.email?.isNotEmpty == true) {
      final path = controller.profile.value?.photo ?? "";
      return kIsWeb ? Image.network(path) : Image.file(File(path));
    }
    return const Icon(Icons.account_box,
        color: ColorPalletes.toscaMedium, size: 64);
  }
}
