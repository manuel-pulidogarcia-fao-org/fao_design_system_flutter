import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';

class FaoBreadcrumbItem {
  const FaoBreadcrumbItem({
    required this.label,
    this.onTap,
  });

  final String label;
  final VoidCallback? onTap;
}

class FaoBreadcrumb extends StatelessWidget {
  const FaoBreadcrumb({
    super.key,
    required this.items,
    this.separator = '/',
  });

  final List<FaoBreadcrumbItem> items;
  final String separator;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Wrap(
      spacing: FaoSpacing.sm,
      runSpacing: FaoSpacing.sm,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        for (var i = 0; i < items.length; i++) ...[
          if (i > 0)
            Text(
              separator,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
              ),
            ),
          if (i > 0) const SizedBox(width: 8),
          _BreadcrumbLink(
            item: items[i],
            isLast: i == items.length - 1,
          ),
        ],
      ],
    );
  }
}

class _BreadcrumbLink extends StatelessWidget {
  const _BreadcrumbLink({
    required this.item,
    required this.isLast,
  });

  final FaoBreadcrumbItem item;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (item.onTap != null && !isLast) {
      return GestureDetector(
        onTap: item.onTap,
        child: Text(
          item.label,
          style: theme.textTheme.bodySmall?.copyWith(
            color: theme.colorScheme.primary,
            decoration: TextDecoration.underline,
            decorationColor: theme.colorScheme.primary,
          ),
        ),
      );
    }

    return Text(
      item.label,
      style: theme.textTheme.bodySmall?.copyWith(
        color: isLast
            ? theme.colorScheme.onSurface
            : theme.colorScheme.onSurface.withValues(alpha: 0.7),
      ),
    );
  }
}
