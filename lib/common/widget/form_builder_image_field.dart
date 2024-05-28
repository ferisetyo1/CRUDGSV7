import 'dart:io';

import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/image_picker.dart';
import 'package:boonda_mitra/common/utils/widget_ext.dart';
import 'package:boonda_mitra/modules/master_data/anak/pilih_children/pilih_children_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class FormBuilderImageField extends StatelessWidget {
  final String? initialValue;
  final Key? formKey;
  final String name;
  final String? Function(String?)? validator;
  const FormBuilderImageField({
    super.key,
    this.initialValue,
    this.formKey,
    required this.name,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<String>(
      initialValue: initialValue,
      key: formKey,
      name: name,
      validator: validator,
      builder: (FormFieldState<String> field) {
        final value = field.value ?? "";

        chooseImage() async {
          final file = await showImagePickerDialog(context);
          if (file != null) {
            field.didChange(file.path);
          }
        }

        if (value.isEmpty) {
          return const Text("Pilih Foto",
                  style: TextStyle(color: ColorPalletes.toscaNormal))
              .withDotBgContainer(
                  color: ColorPalletes.toscaTerang,
                  contentPadding: const EdgeInsets.all(12))
              .clickable(chooseImage, padding: EdgeInsets.zero);
        }

        return Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: value.isURL
                  ? Image.network(
                      field.value ?? "",
                      width: 72,
                      height: 72,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) =>
                          loadingProgress != null
                              ? const ImgPersonEmpty(
                                  width: 72,
                                  height: 72,
                                )
                              : child,
                    )
                  : kIsWeb
                      ? Image.network(
                          field.value ?? "",
                          width: 72,
                          height: 72,
                          fit: BoxFit.cover,
                          loadingBuilder: (context, child, loadingProgress) =>
                              loadingProgress != null
                                  ? const ImgPersonEmpty(
                                      width: 72,
                                      height: 72,
                                    )
                                  : child,
                        )
                      : Image.file(
                          File(value),
                          width: 72,
                          height: 72,
                          fit: BoxFit.cover,
                        ),
            ).marginOnly(right: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ganti",
                  style: TextStyle(color: Colors.green),
                ).clickable(chooseImage),
                const Text(
                  "Hapus",
                  style: TextStyle(color: Colors.red),
                ).clickable(() {
                  field.didChange("");
                })
              ],
            )
          ],
        );
      },
    );
  }
}
