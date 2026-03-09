import 'package:flutter/material.dart';

abstract class FaoSdgColors {
  FaoSdgColors._();

  static const Color sdg1 = Color(0xFFE4253C);
  static const Color sdg2 = Color(0xFFDEA73A);
  static const Color sdg3 = Color(0xFF4C9F46);
  static const Color sdg4 = Color(0xFFC32033);
  static const Color sdg5 = Color(0xFFEF402B);
  static const Color sdg6 = Color(0xFF2ABDE2);
  static const Color sdg7 = Color(0xFFF9C317);
  static const Color sdg8 = Color(0xFFA21D44);
  static const Color sdg9 = Color(0xFFF26E24);
  static const Color sdg10 = Color(0xFFDD1768);
  static const Color sdg11 = Color(0xFFF99C25);
  static const Color sdg12 = Color(0xFFBE8B2C);
  static const Color sdg13 = Color(0xFF408045);
  static const Color sdg14 = Color(0xFF1B97D4);
  static const Color sdg15 = Color(0xFF5CBA48);
  static const Color sdg16 = Color(0xFF0C699E);
  static const Color sdg17 = Color(0xFF184A6B);

  static const List<Color> all = [
    sdg1, sdg2, sdg3, sdg4, sdg5, sdg6, sdg7, sdg8,
    sdg9, sdg10, sdg11, sdg12, sdg13, sdg14, sdg15, sdg16, sdg17,
  ];

  static Color forSdg(int index) {
    if (index < 1 || index > 17) return FaoSdgColors.sdg1;
    return all[index - 1];
  }
}
