import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import 'fao_container.dart';

class FaoContentBlock extends StatelessWidget {
  const FaoContentBlock({
    super.key,
    required this.child,
    this.padding,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return FaoContainer(
      padding: padding ?? const EdgeInsets.all(FaoSpacing.md),
      child: child,
    );
  }
}
