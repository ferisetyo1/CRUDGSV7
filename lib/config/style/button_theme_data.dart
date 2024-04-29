import 'package:flutter/material.dart';

import '../../common/style/color_pallete.dart';
import 'text_style.dart';

final buttonThemeData = ButtonThemeData(
    height: 48,
    textTheme: ButtonTextTheme.primary,
    buttonColor: ColorPalletes.toscaNormal,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorPalletes.toscaNormal,
    ));

final filledButtonThemeData = FilledButtonThemeData(
  style: buttonStyle(),
);

final outlineButtonThemeData = OutlinedButtonThemeData(
  style: outlineButtonStyle(),
);

ButtonStyle buttonStyle() => ButtonStyle(
    textStyle: MaterialStatePropertyAll(defaultTextStyle),
    minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 52)),
    shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    backgroundColor: MaterialStateProperty.resolveWith((states) =>
        states.contains(MaterialState.disabled)
            ? ColorPalletes.abuabuTerang
            : ColorPalletes.toscaNormal));

ButtonStyle outlineButtonStyle() => ButtonStyle(
      textStyle: MaterialStatePropertyAll(
          defaultTextStyle.copyWith(color: ColorPalletes.toscaNormal)),
      minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 52)),
      side: const MaterialStatePropertyAll(
          BorderSide(color: ColorPalletes.toscaNormal, width: 2)),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    );

const textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(ColorPalletes.toscaNormal),
        textStyle: MaterialStatePropertyAll(TextStyle(
            color: ColorPalletes.toscaNormal,
            decoration: TextDecoration.underline))));
