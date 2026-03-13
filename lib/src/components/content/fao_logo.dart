import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum FaoLogoVariant {
  blue,
  white,
  black,
}

enum FaoLogoLanguage {
  ar,
  en,
  es,
  fr,
  ru,
  zh,
}

const String _packageName = 'fao_design_system_flutter';

class FaoLogo extends StatelessWidget {
  const FaoLogo({
    super.key,
    this.language = FaoLogoLanguage.en,
    this.variant = FaoLogoVariant.blue,
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
    FaoLogoVariant v = variant;
    if (v == FaoLogoVariant.blue && language != FaoLogoLanguage.zh) {
      v = FaoLogoVariant.white;
    }
    final variantStr = switch (v) {
      FaoLogoVariant.blue => 'blue',
      FaoLogoVariant.white => 'white',
      FaoLogoVariant.black => 'black',
    };
    final langStr = language.name;
    return 'packages/$_packageName/assets/fao-logo-$variantStr-3lines-$langStr.svg';
  }

  @override
  Widget build(BuildContext context) {
    final path = _assetPath(variant, language);
    return SvgPicture.asset(
      path,
      height: height,
      width: width,
      fit: fit,
    );
  }
}
