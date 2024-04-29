import 'package:boonda_mitra/common/style/color_pallete.dart';
import 'package:flutter/material.dart';

class ChipLabelColor extends Color implements MaterialStateColor {
  const ChipLabelColor() : super(_default);

  static const int _default = 0xFF000000;

  @override
  Color resolve(Set<MaterialState> states) {
    if (states.contains(MaterialState.selected)) {
      return Colors.white; // Selected text color
    }
    return Colors.black; // normal text color
  }
}

final chipThemeData = ChipThemeData(
    selectedColor: ColorPalletes.toscaNormal,
    backgroundColor: ColorPalletes.toscaTerang,
    showCheckmark: false,
    labelStyle:
        const TextStyle(fontWeight: FontWeight.normal, color: ChipLabelColor()),
    side: const BorderSide(color: ColorPalletes.toscaNormal),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)));
