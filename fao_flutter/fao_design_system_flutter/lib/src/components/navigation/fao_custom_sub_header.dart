import 'package:flutter/material.dart';
import '../../tokens/fao_colors.dart';
import '../../tokens/fao_spacing.dart';

class FaoCustomSubHeader extends StatelessWidget {
  const FaoCustomSubHeader({
    super.key,
    this.left,
    this.right,
  });

  final Widget? left;
  final Widget? right;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: FaoSpacing.md,
        vertical: FaoSpacing.sm,
      ),
      color: FaoColors.customSubheaderBg,
      child: Row(
        children: [
          left ?? const SizedBox.shrink(),
          const Spacer(),
          right ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
