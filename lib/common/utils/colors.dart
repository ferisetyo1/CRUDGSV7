import 'dart:ui';

import '../style/color_pallete.dart';

class HexColor {
  static Color fromHex(
      {String? hex, Color defaultColor = ColorPalletes.toscaNormal}) {
    if (hex != null) {
      final buffer = StringBuffer();
      if (hex.length == 6 || hex.length == 7) buffer.write('ff');
      buffer.write(hex.replaceFirst('#', ''));
      return Color(int.parse(buffer.toString(), radix: 16));
    }
    return defaultColor;
  }
}
