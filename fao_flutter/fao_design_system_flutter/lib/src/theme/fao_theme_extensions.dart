import 'package:flutter/material.dart';

@immutable
class FaoThemeExtension extends ThemeExtension<FaoThemeExtension> {
  const FaoThemeExtension({
    this.iyBgPrimary,
    this.iyBgSecondary,
  });

  final Color? iyBgPrimary;
  final Color? iyBgSecondary;

  static FaoThemeExtension of(BuildContext context) {
    return Theme.of(context).extension<FaoThemeExtension>() ?? const FaoThemeExtension();
  }

  static const FaoThemeExtension light = FaoThemeExtension();

  static const FaoThemeExtension internationalYear = FaoThemeExtension(
    iyBgPrimary: Color(0xFF583B0B),
    iyBgSecondary: Color(0xFFF2EAE4),
  );

  @override
  FaoThemeExtension copyWith({
    Color? iyBgPrimary,
    Color? iyBgSecondary,
  }) {
    return FaoThemeExtension(
      iyBgPrimary: iyBgPrimary ?? this.iyBgPrimary,
      iyBgSecondary: iyBgSecondary ?? this.iyBgSecondary,
    );
  }

  @override
  FaoThemeExtension lerp(ThemeExtension<FaoThemeExtension>? other, double t) {
    if (other is! FaoThemeExtension) return this;
    return FaoThemeExtension(
      iyBgPrimary: Color.lerp(iyBgPrimary, other.iyBgPrimary, t),
      iyBgSecondary: Color.lerp(iyBgSecondary, other.iyBgSecondary, t),
    );
  }
}
