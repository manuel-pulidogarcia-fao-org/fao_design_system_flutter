import 'package:flutter/material.dart';
import '../tokens/fao_breakpoints.dart';

abstract class FaoResponsive {
  FaoResponsive._();

  static bool isSm(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= FaoBreakpoints.sm;

  static bool isMd(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= FaoBreakpoints.md;

  static bool isLg(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= FaoBreakpoints.lg;

  static bool isXl(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= FaoBreakpoints.xl;

  static bool isXxl(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= FaoBreakpoints.xxl;

  static double containerWidth(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= FaoBreakpoints.xxl) return FaoBreakpoints.containerMax;
    return width;
  }

  static double captionWidth(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= FaoBreakpoints.xl) return 1140;
    if (width >= FaoBreakpoints.lg) return 960;
    if (width >= FaoBreakpoints.md) return 720;
    if (width >= FaoBreakpoints.sm) return 540;
    return width;
  }
}
