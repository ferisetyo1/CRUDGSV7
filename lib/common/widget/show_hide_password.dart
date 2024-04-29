import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowHidePassword extends StatelessWidget {
  final RxBool showPassword;
  const ShowHidePassword({
    super.key,
    required this.showPassword,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => showPassword.toggle(),
      icon: Icon(showPassword.value ? Icons.visibility : Icons.visibility_off),
    );
  }
}
