import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/modules/master_data/anak/services/children_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class AddDataPertumbuhanController extends GetxController {
  final services = Get.find<ChildrenServices>();
  final formBerat = GlobalKey<FormBuilderState>();
  final formTinggi = GlobalKey<FormBuilderState>();
  final formKepala = GlobalKey<FormBuilderState>();

  final beratDateKey = GlobalKey<FormBuilderFieldState>();
  final beratAgeKey = GlobalKey<FormBuilderFieldState>();
  final beratKey = GlobalKey<FormBuilderFieldState>();

  final tinggiAgeKey = GlobalKey<FormBuilderFieldState>();
  final tinggiKey = GlobalKey<FormBuilderFieldState>();
  final tinggiDateKey = GlobalKey<FormBuilderFieldState>();

  final kepalaAgeKey = GlobalKey<FormBuilderFieldState>();
  final kepalaDateKey = GlobalKey<FormBuilderFieldState>();
  final kepalaKey = GlobalKey<FormBuilderFieldState>();

  late final int id;

  @override
  void onInit() {
    id = int.tryParse(Get.parameters["id_anak"] ?? "") ?? -1;
    super.onInit();
  }

  Future<void> submitKepala() async {
    final kepala = int.tryParse(kepalaKey.currentState?.value ?? "") ?? -1;
    final age = int.tryParse(kepalaAgeKey.currentState?.value ?? "") ?? -1;
    final tanggal = kepalaDateKey.currentState?.value ?? DateTime.now();
    final response = await services
        .postGrowth(
            type: "head",
            age: age,
            measureDate: tanggal,
            headCircumtance: kepala,
            idChild: id)
        .showLoading();
    if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    } else {
      Get.back(result: "success");
      Get.snackbar("Berhasil", "Berhasil menambah data");
    }
  }

  Future<void> submitTinggi() async {
    final height = int.tryParse(tinggiKey.currentState?.value ?? "");
    final age = int.tryParse(tinggiAgeKey.currentState?.value ?? "") ?? -1;
    final tanggal = tinggiDateKey.currentState?.value ?? DateTime.now();
    final response = await services
        .postGrowth(
            type: "height",
            age: age,
            measureDate: tanggal,
            height: height,
            idChild: id)
        .showLoading();
    if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    } else {
      Get.back(result: "success");
      Get.snackbar("Berhasil", "Berhasil menambah data");
    }
  }

  Future<void> submitBerat() async {
    if (formBerat.currentState?.validate() == false) {
      return;
    }
    final weight = int.tryParse(beratKey.currentState?.value ?? "") ?? -1;
    final age = int.tryParse(beratAgeKey.currentState?.value ?? "") ?? -1;
    final tanggal = beratDateKey.currentState?.value ?? DateTime.now();
    final response = await services
        .postGrowth(age: age, measureDate: tanggal, weight: weight, idChild: id)
        .showLoading();
    if (response.isError()) {
      response.showError();
    } else if (response.isNoConnection()) {
      response.showNoConnection();
    } else {
      Get.back(result: "success");
      Get.snackbar("Berhasil", "Berhasil menambah data");
    }
  }
}
