import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './change_language_controller.dart';

final formKey = GlobalKey<FormBuilderState>();

class ChangeLanguagePage extends GetView<ChangeLanguageController> {
  const ChangeLanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChangeLanguagePage'),
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
        child: Column(
          children: [
            FormBuilderRadioGroup(
                    name: "lang",
                    initialValue: controller.lang.value,
                    onChanged: (value) {
                      controller.updateLanguage(value);
                    },
                    orientation: OptionsOrientation.vertical,
                    controlAffinity: ControlAffinity.trailing,
                    validator: FormBuilderValidators.required(),
                    decoration: const InputDecoration(
                        fillColor: Colors.transparent,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        enabledBorder:
                            OutlineInputBorder(borderSide: BorderSide.none),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )),
                    options: {"id": "Indonesia", "en": "English"}
                        .entries
                        .map((e) => FormBuilderFieldOption(
                              value: e.key,
                              child: Row(
                                children: [Text(e.value)],
                              ),
                            ))
                        .toList(growable: false))
                .marginSymmetric(horizontal: 20)
          ],
        ),
      ),
    );
  }
}
