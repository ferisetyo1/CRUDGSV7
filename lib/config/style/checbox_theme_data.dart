import 'package:flutter/material.dart';

import '../../common/style/color_pallete.dart';

final checkboxThemeData = CheckboxThemeData(
    side: const BorderSide(color: ColorPalletes.abuabuGelap, width: 1.2),
    fillColor: MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return ColorPalletes.toscaNormal;
      }
      return Colors.white;
    }));
