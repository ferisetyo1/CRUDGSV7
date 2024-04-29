import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

TextSpan TextSpanButtonBoonda(String text, Function onTap) {
  return TextSpan(
      text: text,
      recognizer: TapGestureRecognizer()..onTap = () => onTap(),
      style: const TextStyle(
          color: ColorPalletes.toscaNormal,
          decoration: TextDecoration.underline));
}
