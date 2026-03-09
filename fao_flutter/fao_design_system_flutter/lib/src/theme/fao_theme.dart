import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../tokens/fao_colors.dart';
import '../tokens/fao_typography.dart';
import 'fao_theme_extensions.dart';

abstract class FaoTheme {
  FaoTheme._();

  static Future<ThemeData> light() async {
    return _buildTheme(
      colorScheme: const ColorScheme.light(
        primary: FaoColors.primary,
        onPrimary: FaoColors.onPrimary,
        primaryContainer: FaoColors.primaryLight,
        onPrimaryContainer: FaoColors.onPrimaryLight,
        secondary: FaoColors.btnSecondary,
        onSecondary: FaoColors.onBackground,
        surface: FaoColors.surface,
        onSurface: FaoColors.onSurface,
        surfaceContainerHighest: FaoColors.accordionBtnBg,
        error: FaoColors.emergency,
        onError: FaoColors.onPrimary,
        outline: FaoColors.border,
      ),
      brightness: Brightness.light,
      extension: FaoThemeExtension.light,
    );
  }

  static Future<ThemeData> dark() async {
    return _buildTheme(
      colorScheme: const ColorScheme.dark(
        primary: Color(0xFF1D82F6),
        onPrimary: FaoColors.onPrimary,
        primaryContainer: Color(0xFF212529),
        onPrimaryContainer: Color(0xFFFFFFFF),
        secondary: Color(0xFF383F45),
        onSecondary: Color(0xFFFFFFFF),
        surface: Color(0xFF212529),
        onSurface: Color(0xFFFFFFFF),
        surfaceContainerHighest: Color(0xFF383F45),
        error: FaoColors.emergency,
        onError: FaoColors.onPrimary,
        outline: Color(0xFF545454),
      ),
      brightness: Brightness.dark,
      extension: FaoThemeExtension.light,
    );
  }

  static Future<ThemeData> internationalYear() async {
    return _buildTheme(
      colorScheme: const ColorScheme.light(
        primary: Color(0xFFCE8F28),
        onPrimary: FaoColors.onPrimary,
        primaryContainer: FaoColors.primaryLight,
        onPrimaryContainer: FaoColors.onPrimaryLight,
        secondary: FaoColors.btnSecondary,
        onSecondary: FaoColors.onBackground,
        surface: FaoColors.surface,
        onSurface: FaoColors.onSurface,
        surfaceContainerHighest: FaoColors.accordionBtnBg,
        error: FaoColors.emergency,
        onError: FaoColors.onPrimary,
        outline: FaoColors.border,
      ),
      brightness: Brightness.light,
      extension: FaoThemeExtension.internationalYear,
    );
  }

  static Future<ThemeData> _buildTheme({
    required ColorScheme colorScheme,
    required Brightness brightness,
    required FaoThemeExtension extension,
  }) async {
    final openSans = GoogleFonts.openSans();
    final merriweather = GoogleFonts.merriweather();
    final montserrat = GoogleFonts.montserrat();

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      extensions: [extension],
      fontFamily: FaoTypography.openSans,
      textTheme: TextTheme(
        displayLarge: montserrat.copyWith(
          fontSize: FaoTypography.size4xl,
          fontWeight: FaoTypography.weightBold,
        ),
        displayMedium: montserrat.copyWith(
          fontSize: FaoTypography.size3xl,
          fontWeight: FaoTypography.weightBold,
        ),
        displaySmall: montserrat.copyWith(
          fontSize: FaoTypography.size2xl,
          fontWeight: FaoTypography.weightBold,
        ),
        headlineLarge: merriweather.copyWith(
          fontSize: FaoTypography.sizeXl,
          fontWeight: FaoTypography.weightBold,
        ),
        headlineMedium: merriweather.copyWith(
          fontSize: FaoTypography.sizeLg,
          fontWeight: FaoTypography.weightBold,
        ),
        headlineSmall: merriweather.copyWith(
          fontSize: FaoTypography.sizeMd,
          fontWeight: FaoTypography.weightBold,
        ),
        titleLarge: openSans.copyWith(
          fontSize: FaoTypography.sizeLg,
          fontWeight: FaoTypography.weightExtraBold,
        ),
        titleMedium: openSans.copyWith(
          fontSize: FaoTypography.sizeMd,
          fontWeight: FaoTypography.weightSemiBold,
        ),
        titleSmall: openSans.copyWith(
          fontSize: FaoTypography.sizeBase,
          fontWeight: FaoTypography.weightSemiBold,
        ),
        bodyLarge: openSans.copyWith(
          fontSize: FaoTypography.sizeMd,
          color: colorScheme.onSurface,
        ),
        bodyMedium: openSans.copyWith(
          fontSize: FaoTypography.sizeBase,
          color: colorScheme.onSurface,
        ),
        bodySmall: openSans.copyWith(
          fontSize: FaoTypography.sizeSm,
          color: colorScheme.onSurface,
        ),
        labelLarge: openSans.copyWith(
          fontSize: FaoTypography.sizeBase,
          fontWeight: FaoTypography.weightMedium,
        ),
        labelMedium: openSans.copyWith(
          fontSize: FaoTypography.sizeSm,
          fontWeight: FaoTypography.weightMedium,
        ),
        labelSmall: openSans.copyWith(
          fontSize: FaoTypography.sizeXs,
          fontWeight: FaoTypography.weightMedium,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          foregroundColor: colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colorScheme.primary,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
      ),
      cardTheme: CardThemeData(
        color: colorScheme.surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: colorScheme.outline.withValues(alpha: 0.3)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }
}
