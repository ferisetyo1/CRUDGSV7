import 'package:boonda_mitra/common/widget/boonda_alert_dialog.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './hapus_akun_controller.dart';

class HapusAkunPage extends GetView<HapusAkunController> {
  const HapusAkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hapus Akun'),
      ),
      persistentFooterButtons: [
        FilledButton(
                onPressed: () async {
                  final res = await showDialog(
                    context: context,
                    builder: (context) => const BoondaAlertDialog(
                      title: "Hapus Akun",
                      content: "Anda tidak dapat membatalkan tindakan ini.",
                      btnTextPositive: "Hapus",
                    ),
                  );
                  if (res == true) {
                    controller.submit();
                  }
                },
                child: const Text("Hapus Akun"))
            .marginSymmetric(horizontal: 20)
      ],
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: FormBuilder(
          key: controller.formKey,
          child: Column(
            children: [
              const Text(
                  "Menghapus akun Anda bersifat permanen, semua data Anda akan dihapus dari database kami dan tidak dapat dikembalikan."),
              const SizedBox(height: 16),
              const Text(
                  "Jika Anda yakin dengan apa yang Anda lakukan, silakan isi alasan Anda di bawah ini"),
              const SizedBox(height: 24),
              FormBuilderTextField(
                key: controller.reasonKey,
                name: "reason",
                validator: FormBuilderValidators.required(),
                decoration:
                    const InputDecoration(hintText: "Isi alasan anda disini"),
                maxLines: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
