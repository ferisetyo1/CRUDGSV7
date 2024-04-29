import 'package:flutter/material.dart';

import '../../common/style/color_pallete.dart';

final radioThemeData =
    RadioThemeData(fillColor: MaterialStateColor.resolveWith((states) {
  if (states.contains(MaterialState.selected)) {
    return ColorPalletes.toscaNormal;
  }
  return ColorPalletes.abuabuGelap;
}));
