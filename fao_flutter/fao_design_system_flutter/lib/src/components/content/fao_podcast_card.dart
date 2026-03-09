import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import '../cards/fao_card.dart';

class FaoPodcastCard extends StatelessWidget {
  const FaoPodcastCard({
    super.key,
    required this.title,
    this.subtitle,
    this.thumbnail,
    this.duration,
    this.onPlay,
    this.onTap,
  });

  final String title;
  final String? subtitle;
  final Widget? thumbnail;
  final String? duration;
  final VoidCallback? onPlay;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FaoCard(
      title: title,
      subtitle: subtitle,
      image: thumbnail,
      onTap: onTap,
      variant: FaoCardVariant.audio,
      child: Padding(
        padding: const EdgeInsets.all(FaoSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.primary,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: FaoSpacing.md),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (duration != null)
                  Text(
                    duration!,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                    ),
                  ),
                Material(
                  color: theme.colorScheme.surface,
                  borderRadius: BorderRadius.circular(50),
                  elevation: 2,
                  child: InkWell(
                    onTap: onPlay,
                    borderRadius: BorderRadius.circular(50),
                    child: const SizedBox(
                      width: 30,
                      height: 30,
                      child: Icon(Icons.play_arrow, size: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
