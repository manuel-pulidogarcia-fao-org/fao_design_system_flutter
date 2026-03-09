import 'package:flutter/material.dart';
import '../../tokens/fao_colors.dart';
import '../../tokens/fao_spacing.dart';
import '../layout/fao_container.dart';

class FaoFooterLink {
  const FaoFooterLink({
    required this.label,
    this.onTap,
  });

  final String label;
  final VoidCallback? onTap;
}

class FaoFooter extends StatelessWidget {
  const FaoFooter({
    super.key,
    this.logo,
    this.linkColumns,
    this.copyright,
    this.copyrightYear,
  });

  final Widget? logo;
  final List<List<FaoFooterLink>>? linkColumns;
  final String? copyright;
  final int? copyrightYear;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final year = copyrightYear ?? DateTime.now().year;

    return Container(
      width: double.infinity,
      color: FaoColors.accordionBtnBg,
      padding: const EdgeInsets.symmetric(vertical: FaoSpacing.sectionVertical),
      child: FaoContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (logo != null || linkColumns != null)
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (logo != null) ...[
                    logo!,
                    const SizedBox(width: FaoSpacing.xxl),
                  ],
                  if (linkColumns != null)
                    Expanded(
                      child: Wrap(
                        spacing: FaoSpacing.xxl,
                        runSpacing: FaoSpacing.lg,
                        children: linkColumns!
                            .map(
                              (column) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: column
                                    .map(
                                      (link) => Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: FaoSpacing.sm),
                                        child: link.onTap != null
                                            ? GestureDetector(
                                                onTap: link.onTap,
                                                child: Text(
                                                  link.label,
                                                  style: theme.textTheme.bodyMedium
                                                      ?.copyWith(
                                                    color: theme.colorScheme.primary,
                                                    decoration: TextDecoration.underline,
                                                  ),
                                                ),
                                              )
                                            : Text(
                                                link.label,
                                                style: theme.textTheme.bodyMedium,
                                              ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                ],
              ),
            if (copyright != null) ...[
              const SizedBox(height: FaoSpacing.lg),
              Text(
                '$copyright $year',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
