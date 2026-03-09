import 'package:flutter/material.dart';
import '../../tokens/fao_breakpoints.dart';
import '../../tokens/fao_spacing.dart';

class FaoContainer extends StatelessWidget {
  const FaoContainer({
    super.key,
    required this.child,
    this.padding,
    this.maxWidth,
    this.alignment = Alignment.center,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;
  final double? maxWidth;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ??
        EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width >= FaoBreakpoints.md
              ? FaoSpacing.lg
              : FaoSpacing.md,
        );

    return Align(
      alignment: alignment,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth ?? FaoBreakpoints.containerMax,
        ),
        child: Padding(
          padding: effectivePadding,
          child: child,
        ),
      ),
    );
  }
}
