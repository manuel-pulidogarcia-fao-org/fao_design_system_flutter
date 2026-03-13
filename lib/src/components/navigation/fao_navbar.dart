import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';

class FaoNavbarItem {
  const FaoNavbarItem({
    required this.label,
    this.onTap,
  });

  final String label;
  final VoidCallback? onTap;
}

class FaoNavbar extends StatelessWidget {
  const FaoNavbar({
    super.key,
    required this.items,
  });

  final List<FaoNavbarItem> items;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(right: FaoSpacing.lg),
              child: InkWell(
                onTap: item.onTap,
                child: Text(
                  item.label,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
