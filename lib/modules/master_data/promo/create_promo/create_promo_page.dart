import 'package:boonda_mitra/common/widget/form_builder_image_field.dart';
import 'package:boonda_mitra/config/style/input_decorating.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './create_promo_controller.dart';

class CreatePromoPage extends GetView<CreatePromoController> {
  const CreatePromoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buat Promo'),
      ),
      persistentFooterButtons: [
        FilledButton(
                onPressed: () => controller.buatPromo(),
                child: const Text("Buat Promo"))
            .marginSymmetric(horizontal: 20, vertical: 8)
      ],
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: FormBuilder(
          key: controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Gambar Promo"),
              const SizedBox(height: 8),
              FormBuilderImageField(
                name: "images",
                validator: FormBuilderValidators.required(),
              ),
              const SizedBox(height: 16),
              const Text("Judul"),
              const SizedBox(height: 8),
              FormBuilderTextField(
                name: "title",
                decoration: const InputDecoration(
                  hintText: "Masukkan judul promo",
                ),
                validator: FormBuilderValidators.required(),
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              ),
              const SizedBox(height: 16),
              const Text("Deskripsi"),
              const SizedBox(height: 8),
              FormBuilderTextField(
                name: "description",
                decoration: const InputDecoration(
                  hintText: "Masukkan deskripsi promo",
                ),
                validator: FormBuilderValidators.required(),
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
              ),
              const SizedBox(height: 16),
              FormBuilderCheckbox(
                name: "use_code",
                title: const Text("Pakai Kode Promo"),
                decoration: defaultInputNoBorder.copyWith(
                    contentPadding: EdgeInsets.zero),
              ),
              const SizedBox(height: 8),
              const Text("Kode Promo"),
              const SizedBox(height: 8),
              FormBuilderTextField(
                name: "promo_code",
                decoration: const InputDecoration(hintText: "Kode Promo"),
              ),
              const SizedBox(height: 16),
              const Text("Tipe Promo"),
              const SizedBox(height: 8),
              FormBuilderDropdown<String>(
                  decoration: const InputDecoration(
                    hintText: "Potongan Harga / Persen",
                    suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  ),
                  validator: FormBuilderValidators.required(),
                  alignment: Alignment.centerLeft,
                  iconSize: 6,
                  dropdownColor: Colors.white,
                  iconEnabledColor: Colors.transparent,
                  name: "type",
                  onChanged: (value) {},
                  items: const [
                    DropdownMenuItem(value: "percent", child: Text("Persen")),
                    DropdownMenuItem(value: "amount", child: Text("Harga"))
                  ]),
              const SizedBox(height: 16),
              const Text("Minimal Pemesanan"),
              const SizedBox(height: 8),
              FormBuilderTextField(
                  name: "minimum_price",
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.numeric(),
                  ]),
                  onTapOutside: (event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  decoration: const InputDecoration(
                    hintText: "Minimal harga pemesanan",
                  )),
              const SizedBox(height: 16),
              const Text("Besar Promo"),
              const SizedBox(height: 8),
              FormBuilderTextField(
                  name: "value",
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.numeric(),
                  ]),
                  decoration: const InputDecoration(
                    hintText: "Masukkan besaran promo",
                  )),
              const SizedBox(height: 16),
              const Text("Maksimal Promo"),
              const SizedBox(height: 8),
              FormBuilderTextField(
                  name: "maximum_promo",
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.numeric(),
                  ]),
                  decoration: const InputDecoration(
                    hintText: "Masukkan nilai maksimal promo",
                  )),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Mulai"),
                      const SizedBox(height: 8),
                      FormBuilderDateTimePicker(
                          name: "start_date",
                          inputType: InputType.date,
                          format: DateFormat("dd/MM/yyyy"),
                          decoration: const InputDecoration(
                              hintText: "dd/MM/yyyy",
                              suffixIcon: Icon(Icons.event))),
                    ],
                  )),
                  const SizedBox(width: 8),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Sampai"),
                      const SizedBox(height: 8),
                      FormBuilderDateTimePicker(
                          name: "end_date",
                          format: DateFormat("dd/MM/yyyy"),
                          decoration: const InputDecoration(
                              hintText: "dd/MM/yyyy",
                              suffixIcon: Icon(Icons.event))),
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 16),
              const Text("Maksimal Pengguna"),
              const SizedBox(height: 8),
              FormBuilderTextField(
                  name: "maximum_user",
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.numeric(),
                  ]),
                  decoration: const InputDecoration(
                    hintText: "Masukkan maksimal pengguna",
                  )),
              const SizedBox(height: 16),
              FormBuilderCheckbox(
                name: "is_only_new_user",
                title: const Text("Khusus pengguna baru"),
                decoration: defaultInputNoBorder.copyWith(
                    contentPadding: EdgeInsets.zero),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
