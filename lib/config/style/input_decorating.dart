import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:flutter/material.dart';

InputDecorationTheme get inputDecorationTheme => const InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      iconColor: ColorPalletes.orange,
      suffixIconColor: ColorPalletes.orange,
      prefixIconColor: ColorPalletes.orange,
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      // constraints: BoxConstraints(minHeight: 48, maxHeight: 48),
      hintStyle: TextStyle(
          color: ColorPalletes.abuabuNormal,
          fontSize: 14,
          fontWeight: FontWeight.w400),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: ColorPalletes.abuabuTerang)),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: ColorPalletes.abuabuMedium)),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
          borderSide: BorderSide(color: ColorPalletes.abuabuTerang)),
    );

InputDecoration get defaultInputNoBorder => const InputDecoration(
      fillColor: Colors.transparent,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      border: InputBorder.none,
    );
