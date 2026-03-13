import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum FaoLogoVariant {
  threeLinesBlue,
  threeLinesWhite,
  threeLinesBlack,
  shortBlue,
  shortWhite,
  shortBlack,
}

enum FaoLogoLanguage { ar, en, es, fr, ru, zh }

const String _packageName = 'fao_design_system_flutter';

class FaoLogo extends StatelessWidget {
  const FaoLogo({
    super.key,
    this.language = FaoLogoLanguage.en,
    this.variant = FaoLogoVariant.threeLinesBlue,
    this.height,
    this.width,
    this.fit = BoxFit.contain,
  });

  final FaoLogoLanguage language;
  final FaoLogoVariant variant;
  final double? height;
  final double? width;
  final BoxFit fit;

  static String _assetPath(FaoLogoVariant variant, FaoLogoLanguage language) {
    String path = switch (variant) {
      FaoLogoVariant.threeLinesBlue ||
      FaoLogoVariant.threeLinesWhite ||
      FaoLogoVariant.threeLinesBlack =>
        'packages/$_packageName/assets/fao-logo-black-3lines-${language.name}.svg',
      FaoLogoVariant.shortBlue ||
      FaoLogoVariant.shortWhite ||
      FaoLogoVariant.shortBlack =>
        'packages/$_packageName/assets/testshort.svg',
    };
    print('path: $path');
    return path;
  }

  @override
  Widget build(BuildContext context) {
    final path = _assetPath(variant, language);
    final Color? color = switch (variant) {
      FaoLogoVariant.threeLinesBlue => const Color(0xFF5892C9),
      FaoLogoVariant.threeLinesWhite => Colors.white,
      FaoLogoVariant.threeLinesBlack => Colors.black,
      FaoLogoVariant.shortBlue => const Color(0xFF5892C9),
      FaoLogoVariant.shortWhite => Colors.white,
      FaoLogoVariant.shortBlack => Colors.black,
    };
    return SvgPicture.asset(
      key: ValueKey(path),
      path,
      height: height,
      width: width,
      fit: fit,
      colorFilter:
          color == null ? null : ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
