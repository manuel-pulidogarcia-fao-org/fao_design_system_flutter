import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';

class FaoBadge extends StatelessWidget {
  const FaoBadge({
    super.key,
    required this.label,
    this.color,
    this.textColor,
  });

  final String label;
  final Color? color;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveColor = color ?? theme.colorScheme.primary;
    final effectiveTextColor =
        textColor ?? theme.colorScheme.onPrimary;

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: FaoSpacing.sm,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: effectiveColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(
          color: effectiveTextColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
