import 'package:boonda_mitra/common/utils/future_ext.dart';
import 'package:boonda_mitra/modules/master_data/promo/promo_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class CreatePromoController extends GetxController {
  final services = Get.find<PromoServices>();
  final formKey = GlobalKey<FormBuilderState>();

  buatPromo() async {
    String? path = formKey.currentState?.fields["images"]?.value;
    String? title = formKey.currentState?.fields["title"]?.value;
    String? desc = formKey.currentState?.fields["description"]?.value;
    String? promoCode = formKey.currentState?.fields["promo_code"]?.value;
    String? type = formKey.currentState?.fields["type"]?.value;
    int? minimumPrice = int.tryParse(
        formKey.currentState?.fields["minimum_price"]?.value ?? "");
    int? value =
        int.tryParse(formKey.currentState?.fields["value"]?.value ?? "");
    int? maximumPrice = int.tryParse(
        formKey.currentState?.fields["maximum_promo"]?.value ?? "");
    DateTime? startDate = formKey.currentState?.fields["start_date"]?.value;
    DateTime? endDate = formKey.currentState?.fields["end_date"]?.value;
    int? maximumUser =
        int.tryParse(formKey.currentState?.fields["maximum_user"]?.value ?? "");
    bool? isOnlyNewUser =
        formKey.currentState?.fields["is_only_new_user"]?.value;

    final resp = await services
        .buatPromo(
            path: path,
            title: title,
            desc: desc,
            promoCode: promoCode,
            type: type,
            minimumPrice: minimumPrice,
            value: value,
            maximumPrice: maximumPrice,
            startDate: startDate,
            endDate: endDate,
            maximumUser: maximumUser,
            isOnlyNewUser: isOnlyNewUser)
        .showLoading();
    if (resp.isError()) {
      resp.showError();
    }
    if (resp.isNoConnection()) {
      resp.showNoConnection();
    }
    if (resp.isSuccess()) {
      Get.back(result: true);
      Get.snackbar("Success", "Berhasil buat promo");
    }
  }
}
