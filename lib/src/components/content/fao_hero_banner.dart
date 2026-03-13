import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import '../../utils/fao_responsive.dart';
import '../layout/fao_container.dart';

class FaoHeroBanner extends StatelessWidget {
  const FaoHeroBanner({
    super.key,
    required this.background,
    this.title,
    this.subtitle,
    this.child,
    this.linkIcon,
    this.minHeight = 425,
    this.standardCaptionBox = false,
  });

  final Widget background;
  final String? title;
  final String? subtitle;
  final Widget? child;
  final Widget? linkIcon;
  final double minHeight;
  final bool standardCaptionBox;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RepaintBoundary(
      child: SizedBox(
        height: minHeight,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            background,
            if (!standardCaptionBox)
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  height: minHeight * 0.55,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withValues(alpha: 0.7),
                      ],
                    ),
                  ),
                ),
              ),
            Center(
              child: FaoContainer(
                maxWidth: FaoResponsive.captionWidth(context),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width >= 576
                      ? FaoSpacing.lg
                      : FaoSpacing.md,
                ),
                child: standardCaptionBox
                    ? Container(
                        padding: const EdgeInsets.all(FaoSpacing.lg),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withValues(alpha: 0.6),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: child ??
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (title != null)
                                  Text(
                                    title!,
                                    style: theme.textTheme.headlineMedium?.copyWith(
                                      color: theme.colorScheme.onPrimary,
                                    ),
                                  ),
                                if (subtitle != null) ...[
                                  const SizedBox(height: 8),
                                  Text(
                                    subtitle!,
                                    style: theme.textTheme.bodyLarge?.copyWith(
                                      color: theme.colorScheme.onPrimary,
                                    ),
                                  ),
                                ],
                                if (linkIcon != null) ...[
                                  const SizedBox(height: 8),
                                  linkIcon!,
                                ],
                              ],
                            ),
                      )
                        : child ??
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (title != null)
                              Text(
                                title!,
                                style: theme.textTheme.headlineMedium?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            if (subtitle != null) ...[
                              const SizedBox(height: 8),
                              Text(
                                subtitle!,
                                style: theme.textTheme.bodyLarge?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                            if (linkIcon != null) ...[
                              const SizedBox(height: 8),
                              linkIcon!,
                            ],
                          ],
                        ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
