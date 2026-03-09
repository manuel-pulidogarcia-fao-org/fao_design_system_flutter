import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import 'fao_container.dart';

class FaoSection extends StatelessWidget {
  const FaoSection({
    super.key,
    this.title,
    this.subtitle,
    this.child,
    this.padding,
  });

  final String? title;
  final String? subtitle;
  final Widget? child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectivePadding = padding ??
        const EdgeInsets.symmetric(vertical: FaoSpacing.sectionVertical);

    return Padding(
      padding: effectivePadding,
      child: FaoContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null) ...[
              Text(
                title!,
                style: theme.textTheme.headlineMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Container(
                width: 50,
                height: 3,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 8),
                Text(
                  subtitle!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
              const SizedBox(height: FaoSpacing.mbComp),
            ],
            child ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
