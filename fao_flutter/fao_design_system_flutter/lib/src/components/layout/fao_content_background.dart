import 'package:flutter/material.dart';
import '../../tokens/fao_colors.dart';
import '../../tokens/fao_spacing.dart';

enum FaoContentBackgroundVariant {
  grayDark,
  grayLight,
  grayMedium,
  primary,
  primaryLight,
  white,
  whiteFao,
  caption,
  emergency,
  orange,
  unBlue,
}

extension FaoContentBackgroundVariantExt on FaoContentBackgroundVariant {
  Color get color {
    switch (this) {
      case FaoContentBackgroundVariant.grayDark:
        return const Color(0xFF212529);
      case FaoContentBackgroundVariant.grayLight:
        return const Color(0xFFF8F9FA);
      case FaoContentBackgroundVariant.grayMedium:
        return const Color(0xFFE9ECEF);
      case FaoContentBackgroundVariant.primary:
        return FaoColors.primary;
      case FaoContentBackgroundVariant.primaryLight:
        return FaoColors.primaryLight;
      case FaoContentBackgroundVariant.white:
        return FaoColors.background;
      case FaoContentBackgroundVariant.whiteFao:
        return FaoColors.whiteFao;
      case FaoContentBackgroundVariant.caption:
        return FaoColors.caption;
      case FaoContentBackgroundVariant.emergency:
        return FaoColors.emergency;
      case FaoContentBackgroundVariant.orange:
        return FaoColors.orange;
      case FaoContentBackgroundVariant.unBlue:
        return FaoColors.unBlue;
    }
  }

  Color get textColor {
    switch (this) {
      case FaoContentBackgroundVariant.grayDark:
      case FaoContentBackgroundVariant.primary:
      case FaoContentBackgroundVariant.caption:
      case FaoContentBackgroundVariant.emergency:
        return FaoColors.onPrimary;
      default:
        return FaoColors.onBackground;
    }
  }
}

class FaoContentBackground extends StatelessWidget {
  const FaoContentBackground({
    super.key,
    required this.child,
    this.variant = FaoContentBackgroundVariant.white,
    this.padding,
  });

  final Widget child;
  final FaoContentBackgroundVariant variant;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding ??
          const EdgeInsets.symmetric(
            vertical: FaoSpacing.sectionVertical,
            horizontal: FaoSpacing.md,
          ),
      color: variant.color,
      child: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: variant.textColor,
            ),
        child: child,
      ),
    );
  }
}
