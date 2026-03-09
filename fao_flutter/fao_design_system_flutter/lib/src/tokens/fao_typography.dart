import 'package:flutter/material.dart';

abstract class FaoTypography {
  FaoTypography._();

  static const String openSans = 'Open Sans';
  static const String merriweather = 'Merriweather';
  static const String montserrat = 'Montserrat';
  static const String cairo = 'Cairo';
  static const String notoSansJp = 'Noto Sans JP';
  static const String robotoCondensed = 'Roboto Condensed';

  static const double sizeXs = 12;
  static const double sizeSm = 14;
  static const double sizeBase = 16;
  static const double sizeMd = 18;
  static const double sizeLg = 20;
  static const double sizeXl = 24;
  static const double size2xl = 32;
  static const double size3xl = 40;
  static const double size4xl = 64;

  static FontWeight weightLight = FontWeight.w300;
  static FontWeight weightRegular = FontWeight.w400;
  static FontWeight weightMedium = FontWeight.w500;
  static FontWeight weightSemiBold = FontWeight.w600;
  static FontWeight weightBold = FontWeight.w700;
  static FontWeight weightExtraBold = FontWeight.w800;
}
