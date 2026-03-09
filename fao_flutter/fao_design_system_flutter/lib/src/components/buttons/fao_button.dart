import 'package:flutter/material.dart';

enum FaoButtonVariant {
  primary,
  secondary,
  outline,
  link,
  icon,
  round,
  roundBig,
  search,
  sdg,
}

enum FaoButtonSize { normal, large }

class FaoButton extends StatelessWidget {
  const FaoButton({
    super.key,
    this.label,
    this.onPressed,
    this.variant = FaoButtonVariant.primary,
    this.size = FaoButtonSize.normal,
    this.icon,
    this.iconPosition = IconPosition.right,
    this.expanded = false,
  });

  final String? label;
  final VoidCallback? onPressed;
  final FaoButtonVariant variant;
  final FaoButtonSize size;
  final IconData? icon;
  final IconPosition iconPosition;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final padding = size == FaoButtonSize.large
        ? const EdgeInsets.symmetric(horizontal: 32, vertical: 16)
        : const EdgeInsets.symmetric(horizontal: 24, vertical: 12);
    final iconSize = size == FaoButtonSize.large ? 20.0 : 18.0;
    final gap = size == FaoButtonSize.large ? 12.0 : 8.0;
    final roundPadding = variant == FaoButtonVariant.roundBig ? 16.0 : 12.0;

    Widget child = Row(
      mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null && iconPosition == IconPosition.left) ...[
          Icon(icon, size: iconSize),
          SizedBox(width: gap),
        ],
        if (label != null && label!.isNotEmpty) Text(label!),
        if (icon != null && iconPosition == IconPosition.right) ...[
          SizedBox(width: gap),
          Icon(icon, size: iconSize),
        ],
      ],
    );

    if (variant == FaoButtonVariant.icon) {
      return IconButton(
        onPressed: onPressed,
        icon: Icon(icon ?? Icons.help_outline, size: iconSize),
        style: IconButton.styleFrom(
          foregroundColor: theme.colorScheme.primary,
        ),
      );
    }

    if (variant == FaoButtonVariant.round || variant == FaoButtonVariant.roundBig) {
      return Material(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(100),
          child: Padding(
            padding: EdgeInsets.all(roundPadding),
            child: icon != null
                ? Icon(icon, size: iconSize, color: theme.colorScheme.onPrimary)
                : (label != null && label!.isNotEmpty
                    ? Text(label!, style: TextStyle(color: theme.colorScheme.onPrimary, fontSize: iconSize))
                    : const SizedBox.shrink()),
          ),
        ),
      );
    }

    if (variant == FaoButtonVariant.search) {
      return SizedBox(
        width: expanded ? double.infinity : null,
        child: OutlinedButton.icon(
          onPressed: onPressed,
          icon: Icon(Icons.search, size: iconSize),
          label: Text(label ?? 'Search'),
          style: OutlinedButton.styleFrom(
            padding: padding,
            foregroundColor: theme.colorScheme.primary,
            side: BorderSide(color: theme.colorScheme.outline),
          ),
        ),
      );
    }

    if (variant == FaoButtonVariant.sdg) {
      return SizedBox(
        width: expanded ? double.infinity : null,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            padding: padding,
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white),
          ),
          child: child,
        ),
      );
    }

    switch (variant) {
      case FaoButtonVariant.primary:
        return SizedBox(
          width: expanded ? double.infinity : null,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: padding,
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
            ),
            child: child,
          ),
        );
      case FaoButtonVariant.secondary:
        return SizedBox(
          width: expanded ? double.infinity : null,
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              padding: padding,
              foregroundColor: theme.colorScheme.primary,
              side: BorderSide(color: theme.colorScheme.primary),
            ),
            child: child,
          ),
        );
      case FaoButtonVariant.outline:
        return SizedBox(
          width: expanded ? double.infinity : null,
          child: OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              padding: padding,
              foregroundColor: theme.colorScheme.onSurface,
              side: BorderSide(color: theme.colorScheme.outline),
            ),
            child: child,
          ),
        );
      case FaoButtonVariant.link:
        return SizedBox(
          width: expanded ? double.infinity : null,
          child: TextButton(
            onPressed: onPressed,
            style: TextButton.styleFrom(
              padding: padding,
              foregroundColor: theme.colorScheme.primary,
            ),
            child: child,
          ),
        );
      case FaoButtonVariant.icon:
      case FaoButtonVariant.round:
      case FaoButtonVariant.roundBig:
      case FaoButtonVariant.search:
      case FaoButtonVariant.sdg:
        throw StateError('Unreachable: handled above');
    }
  }
}

enum IconPosition { left, right }
