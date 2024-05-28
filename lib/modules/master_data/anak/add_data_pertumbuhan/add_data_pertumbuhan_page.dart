import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/modules/master_data/anak/model/growth_response.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'add_data_pertumbuhan_controller.dart';

class AddDataPertumbuhanPage extends GetView<AddDataPertumbuhanController> {
  const AddDataPertumbuhanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tambah Data'),
        ),
        body: Column(
          children: [
            const TabBar(
              labelColor: Colors.black87,
              indicatorColor: ColorPalletes.orange,
              unselectedLabelColor: ColorPalletes.abuabuGelap,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              tabs: [
                Tab(text: "Berat"),
                Tab(text: "Tinggi"),
                Tab(
                  child: Text(
                    "Lingkar Kepala",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ).marginSymmetric(horizontal: 20, vertical: 16),
            Expanded(
              child: TabBarView(
                children: [
                  FormBuilder(
                    key: controller.formBerat,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Umur").marginOnly(bottom: 8),
                        FormBuilderTextField(
                          name: "age_weight",
                          key: controller.beratAgeKey,
                          keyboardType: TextInputType.number,
                          initialValue: (Get.arguments as GrowthResponse?)?.age,
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        const Text("Berat").marginOnly(bottom: 8),
                        FormBuilderTextField(
                          name: "weight",
                          key: controller.beratKey,
                          initialValue:
                              (Get.arguments as GrowthResponse?)?.weight,
                          keyboardType: TextInputType.number,
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        const Text("Tanggal").marginOnly(bottom: 8),
                        FormBuilderDateTimePicker(
                          key: controller.beratDateKey,
                          initialValue:
                              (Get.arguments as GrowthResponse?)?.measureDate,
                          name: "measure_weight",
                          inputType: InputType.date,
                          format: DateFormat("dd/MM/yyyy"),
                          lastDate: DateTime.now(),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.event),
                            hintText: "Tanggal mulai",
                          ),
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        FilledButton(
                            onPressed: () {
                              controller.submitBerat();
                            },
                            child: Text("save".tr))
                      ],
                    ),
                  ),
                  FormBuilder(
                    key: controller.formTinggi,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Umur").marginOnly(bottom: 8),
                        FormBuilderTextField(
                          name: "age_height",
                          key: controller.tinggiAgeKey,
                          keyboardType: TextInputType.number,
                          initialValue: (Get.arguments as GrowthResponse?)?.age,
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        const Text("Tinggi").marginOnly(bottom: 8),
                        FormBuilderTextField(
                          name: "tinggi",
                          key: controller.tinggiKey,
                          initialValue:
                              (Get.arguments as GrowthResponse?)?.height,
                          keyboardType: TextInputType.number,
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        const Text("Tanggal").marginOnly(bottom: 8),
                        FormBuilderDateTimePicker(
                          key: controller.tinggiDateKey,
                          initialValue:
                              (Get.arguments as GrowthResponse?)?.measureDate,
                          name: "measure_tinggi",
                          inputType: InputType.date,
                          format: DateFormat("dd/MM/yyyy"),
                          lastDate: DateTime.now(),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.event),
                            hintText: "Tanggal",
                          ),
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        FilledButton(
                            onPressed: () {
                              controller.submitTinggi();
                            },
                            child: Text("save".tr))
                      ],
                    ),
                  ),
                  FormBuilder(
                    key: controller.formKepala,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Umur").marginOnly(bottom: 8),
                        FormBuilderTextField(
                          name: "age_kepala",
                          key: controller.kepalaAgeKey,
                          keyboardType: TextInputType.number,
                          initialValue: (Get.arguments as GrowthResponse?)?.age,
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        const Text("Lingkar Kepala").marginOnly(bottom: 8),
                        FormBuilderTextField(
                          name: "kepala",
                          key: controller.kepalaKey,
                          initialValue: (Get.arguments as GrowthResponse?)
                              ?.headCircumtance,
                          keyboardType: TextInputType.number,
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        const Text("Tanggal").marginOnly(bottom: 8),
                        FormBuilderDateTimePicker(
                          key: controller.kepalaDateKey,
                          initialValue:
                              (Get.arguments as GrowthResponse?)?.measureDate,
                          name: "measure_kepala",
                          inputType: InputType.date,
                          format: DateFormat("dd/MM/yyyy"),
                          lastDate: DateTime.now(),
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.event),
                            hintText: "Tanggal",
                          ),
                          validator: FormBuilderValidators.required(),
                        ).marginOnly(bottom: 16),
                        FilledButton(
                            onPressed: () {
                              controller.submitKepala();
                            },
                            child: Text("save".tr))
                      ],
                    ),
                  ),
                ],
              ).marginSymmetric(horizontal: 20),
            )
          ],
        ),
      ),
    );
  }
}
