import 'package:flutter/material.dart';
import '../../tokens/fao_colors.dart';
import '../../tokens/fao_spacing.dart';
import '../../utils/fao_responsive.dart';

class FaoSmallSlotsRow extends StatelessWidget {
  const FaoSmallSlotsRow({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final isMd = FaoResponsive.isMd(context);
    final isLg = FaoResponsive.isLg(context);
    final useRow = !isMd || isLg;

    if (children.isEmpty) return const SizedBox.shrink();
    if (children.length == 1) return children[0];

    if (useRow) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0)
              Container(
                width: 1,
                margin: const EdgeInsets.symmetric(horizontal: FaoSpacing.sm),
                color: FaoColors.onBackgroundSecondary,
              ),
            Expanded(child: children[i]),
          ],
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < children.length; i++) ...[
          if (i > 0)
            Container(
              height: 1,
              margin: const EdgeInsets.symmetric(vertical: FaoSpacing.sm),
              color: FaoColors.onBackgroundSecondary,
            ),
          children[i],
        ],
      ],
    );
  }
}
