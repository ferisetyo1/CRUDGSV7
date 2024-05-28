import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:boonda_mitra/common/utils/date_ext.dart';
import 'package:boonda_mitra/modules/order/filter_order/model/filterresult.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './filter_order_controller.dart';

final _formKey = GlobalKey<FormBuilderState>();

class FilterOrderPage extends GetView<FilterOrderController> {
  const FilterOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Filter'),
      ),
      resizeToAvoidBottomInset: true,
      persistentFooterButtons: [
        Row(
          children: [
            Expanded(
                child: OutlinedButton(
                    onPressed: () {
                      Get.back(
                          result: FilterOrderResult(
                              start: DateTime.now().copyWith(day: 1),
                              end: DateTime.now()));
                    },
                    child: const Text("Reset"))),
            const SizedBox(width: 8),
            Expanded(
                child: FilledButton(
                    onPressed: () {
                      final startDate = _formKey
                          .currentState?.fields["start"]?.value as DateTime?;
                      final endDate = _formKey
                          .currentState?.fields["end"]?.value as DateTime?;
                      final parentId = _formKey
                          .currentState?.fields["parentId"]?.value as int?;
                      final chidlId = _formKey
                          .currentState?.fields["childId"]?.value as int?;
                      Get.back(
                          result: FilterOrderResult(
                              start: startDate,
                              end: endDate,
                              parentId: parentId,
                              childrenId: chidlId));
                    },
                    child: Text("Simpan")))
          ],
        ).marginSymmetric(horizontal: 20, vertical: 8)
      ],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          FormBuilder(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Tanggal"),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Mulai",
                          style: TextStyle(
                              color: ColorPalletes.abuabuGelap, fontSize: 12),
                        ),
                        SizedBox(height: 8),
                        FormBuilderDateTimePicker(
                          name: "start",
                          initialValue: controller.initial?.start,
                          format: DateFormat("dd/MM/yyyy"),
                          inputType: InputType.date,
                          decoration:
                              InputDecoration(hintText: "Tanggal Mulai"),
                        ),
                      ],
                    )),
                    const SizedBox(width: 16),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Sampai",
                          style: TextStyle(
                              color: ColorPalletes.abuabuGelap, fontSize: 12),
                        ),
                        SizedBox(height: 8),
                        FormBuilderDateTimePicker(
                          name: "end",
                          initialValue: controller.initial?.end,
                          format: DateFormat("dd/MM/yyyy"),
                          inputType: InputType.date,
                          decoration:
                              InputDecoration(hintText: "Tanggal Berakhir"),
                        ),
                      ],
                    )),
                  ],
                ),
                const SizedBox(height: 16),
                Text("Pilih Orang Tua"),
                SizedBox(height: 8),
                Obx(() {
                  return FormBuilderDropdown<int>(
                      initialValue: controller.initial?.parentId,
                      decoration: InputDecoration(
                        hintText: "Pilih Orang Tua",
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      ),
                      alignment: Alignment.centerLeft,
                      iconSize: 6,
                      dropdownColor: Colors.white,
                      iconEnabledColor: Colors.transparent,
                      name: "parentId",
                      onChanged: (value) {
                        controller.getChildren(value ?? -1);
                      },
                      items: [
                        // const DropdownMenuItem(
                        //   value: null,
                        //   enabled: false,
                        //   child: Text("Pilih Orang Tua"),
                        // ),
                        if (controller.parentState.value.isLoading())
                          DropdownMenuItem(
                            enabled: false,
                            child: controller.parentState.value.loadingWidget(),
                          ),
                        if (controller.parentState.value.isError())
                          DropdownMenuItem(
                            enabled: false,
                            child:
                                Text(controller.parentState.value.errorMessage),
                          ),
                        ...controller.parentState.value.data?.map((e) =>
                                DropdownMenuItem(
                                    value: e.id, child: Text(e.name ?? ""))) ??
                            []
                      ]);
                }),
                SizedBox(height: 16),
                Text("Pilih Anak"),
                SizedBox(height: 8),
                Obx(() {
                  return FormBuilderDropdown<int>(
                      initialValue: controller.initial?.childrenId,
                      decoration: InputDecoration(
                        hintText: "Pilih Anak",
                        suffixIcon: Icon(Icons.keyboard_arrow_down_rounded),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                      ),
                      alignment: Alignment.centerLeft,
                      name: "childId",
                      iconSize: 0,
                      items: [
                        // const DropdownMenuItem(
                        //   enabled: false,
                        //   child: Text("Pilih Anak"),
                        // ),
                        if (controller.childState.value.isLoading())
                          DropdownMenuItem(
                            enabled: false,
                            child: controller.childState.value.loadingWidget(),
                          ),
                        if (controller.childState.value.isError())
                          DropdownMenuItem(
                            enabled: false,
                            child:
                                Text(controller.childState.value.errorMessage),
                          ),
                        ...controller.childState.value.data?.map((e) =>
                                DropdownMenuItem(
                                    value: e.id, child: Text(e.name ?? ""))) ??
                            []
                      ]);
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}
