import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import '../../utils/fao_responsive.dart';

class FaoRowMultimedia extends StatelessWidget {
  const FaoRowMultimedia({
    super.key,
    required this.children,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final isMd = FaoResponsive.isMd(context);
    final isLg = FaoResponsive.isLg(context);

    final useRow = (FaoResponsive.isSm(context) && !isMd) || isLg;

    if (children.isEmpty) return const SizedBox.shrink();

    if (useRow) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children.asMap().entries.map((entry) {
          final index = entry.key;
          final child = entry.value;
          return Expanded(
            flex: index == 0 ? 1 : 1,
            child: Padding(
              padding: EdgeInsets.only(
                left: index > 0 ? FaoSpacing.md : 0,
              ),
              child: child,
            ),
          );
        }).toList(),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: children
          .map((c) => Padding(
                padding: const EdgeInsets.only(bottom: FaoSpacing.md),
                child: c,
              ))
          .toList(),
    );
  }
}
