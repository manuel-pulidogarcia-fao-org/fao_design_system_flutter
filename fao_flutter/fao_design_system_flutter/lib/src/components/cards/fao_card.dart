import 'package:flutter/material.dart';
import '../../tokens/fao_colors.dart';
import '../../tokens/fao_spacing.dart';

enum FaoCardVariant {
  article,
  audio,
  video,
  social,
  newsHome,
  base,
  calendar,
  events,
  publication,
  speeches,
  webcast,
  elearning,
  photoGallery,
}

enum FaoSocialPlatform {
  twitter,
  facebook,
  instagram,
  linkedin,
  weibo,
  wechat,
  bsky,
}

IconData _socialPlatformIcon(FaoSocialPlatform platform) {
  switch (platform) {
    case FaoSocialPlatform.twitter:
      return Icons.alternate_email;
    case FaoSocialPlatform.facebook:
      return Icons.people;
    case FaoSocialPlatform.instagram:
      return Icons.camera_alt;
    case FaoSocialPlatform.linkedin:
      return Icons.business;
    case FaoSocialPlatform.weibo:
      return Icons.language;
    case FaoSocialPlatform.wechat:
      return Icons.chat;
    case FaoSocialPlatform.bsky:
      return Icons.cloud;
  }
}

class FaoCard extends StatelessWidget {
  const FaoCard({
    super.key,
    this.title,
    this.subtitle,
    this.body,
    this.image,
    this.imageAspectRatio = 16 / 9,
    this.onTap,
    this.variant = FaoCardVariant.base,
    this.socialPlatform,
    this.overlay = false,
    this.child,
    this.year,
    this.metadata,
    this.slotDgCorner = false,
  });

  final String? title;
  final String? subtitle;
  final String? body;
  final String? year;
  final String? metadata;
  final bool slotDgCorner;
  final Widget? image;
  final double imageAspectRatio;
  final VoidCallback? onTap;
  final FaoCardVariant variant;
  final FaoSocialPlatform? socialPlatform;
  final bool overlay;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final aspectRatio = variant == FaoCardVariant.social ? 1.0 : imageAspectRatio;

    Widget content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (image != null) ...[
          AspectRatio(
            aspectRatio: aspectRatio,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
              child: overlay ||
                    variant == FaoCardVariant.webcast ||
                    variant == FaoCardVariant.elearning ||
                    variant == FaoCardVariant.photoGallery ||
                    (variant == FaoCardVariant.social && socialPlatform != null)
                  ? Stack(
                      fit: StackFit.expand,
                      children: [
                        image!,
                        if (variant == FaoCardVariant.social && socialPlatform != null)
                          Stack(
                            fit: StackFit.expand,
                            children: [
                              Positioned(
                                left: FaoSpacing.md,
                                top: FaoSpacing.md,
                                child: Container(
                                  padding: const EdgeInsets.all(FaoSpacing.sm),
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(alpha: 0.9),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Icon(
                                    _socialPlatformIcon(socialPlatform!),
                                    size: 24,
                                    color: FaoColors.onBackground,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  height: 60,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Colors.transparent,
                                        Colors.black.withValues(alpha: 0.6),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        if (variant == FaoCardVariant.webcast ||
                            variant == FaoCardVariant.elearning ||
                            variant == FaoCardVariant.photoGallery)
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(FaoSpacing.md),
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.5),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                variant == FaoCardVariant.webcast
                                    ? Icons.play_arrow
                                    : variant == FaoCardVariant.elearning
                                        ? Icons.school
                                        : Icons.photo_library,
                                color: Colors.white,
                                size: 32,
                              ),
                            ),
                          ),
                        if (overlay)
                          Container(
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
                        if (overlay && title != null)
                          Positioned(
                            left: FaoSpacing.md,
                            right: FaoSpacing.md,
                            bottom: FaoSpacing.md,
                            child: Text(
                              title!,
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                      ],
                    )
                  : image!,
            ),
          ),
        ],
        if (child != null)
          child!
        else
          Padding(
            padding: const EdgeInsets.all(FaoSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (variant == FaoCardVariant.newsHome && title != null)
                  Text(
                    'NEWS',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                if (variant == FaoCardVariant.calendar && year != null)
                  Text(
                    year!,
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                if (title != null && !overlay) ...[
                  if (variant == FaoCardVariant.newsHome) const SizedBox(height: 8),
                  Text(
                    title!,
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
                if (metadata != null && (variant == FaoCardVariant.events ||
                    variant == FaoCardVariant.publication ||
                    variant == FaoCardVariant.speeches)) ...[
                  const SizedBox(height: 4),
                  Text(
                    metadata!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
                if (subtitle != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    subtitle!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
                if (body != null) ...[
                  const SizedBox(height: 8),
                  Text(
                    body!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ],
            ),
          ),
      ],
    );

    return Card(
      clipBehavior: Clip.antiAlias,
      shape: slotDgCorner
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: theme.colorScheme.primary),
            )
          : null,
      child: InkWell(
        onTap: onTap,
        child: content,
      ),
    );
  }
}
