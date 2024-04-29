import 'package:flutter/material.dart';

class CoreTheme {
  static List<BoxShadow> defaultBoxShadow = [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      spreadRadius: 0,
      blurRadius: 16,
      offset: const Offset(0, 4),
    ),
  ];
}
