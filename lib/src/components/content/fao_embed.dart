import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';

class FaoEmbed extends StatelessWidget {
  const FaoEmbed({
    super.key,
    required this.child,
    this.aspectRatio = 3 / 2,
    this.padding,
  });

  final Widget child;
  final double aspectRatio;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(FaoSpacing.md),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: child,
        ),
      ),
    );
  }
}
