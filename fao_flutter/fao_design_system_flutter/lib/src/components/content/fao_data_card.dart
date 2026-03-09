import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import '../../tokens/fao_colors.dart';

class FaoDataCard extends StatelessWidget {
  const FaoDataCard({
    super.key,
    required this.title,
    this.subtitle,
    required this.value,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final String value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Material(
      color: FaoColors.background,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(5),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(FaoSpacing.lg),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        color: FaoColors.link,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        subtitle!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ],
                ),
              ),
            ),
            Container(
              width: 1,
              height: 60,
              color: FaoColors.line,
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(FaoSpacing.lg),
                decoration: const BoxDecoration(
                  color: FaoColors.primaryLight,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                child: Center(
                  child: Text(
                    value,
                    style: theme.textTheme.headlineMedium?.copyWith(
                      color: FaoColors.link,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
