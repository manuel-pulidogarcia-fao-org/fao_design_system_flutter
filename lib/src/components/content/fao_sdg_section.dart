import 'package:flutter/material.dart';
import '../../tokens/fao_breakpoints.dart';
import '../../tokens/fao_spacing.dart';
import 'fao_sdg_grid_item.dart';

class FaoSdgSection extends StatelessWidget {
  const FaoSdgSection({
    super.key,
    this.message,
    this.onSdgTap,
  });

  final Widget? message;
  final void Function(int sdgIndex)? onSdgTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    double height = 700;
    if (width >= FaoBreakpoints.xl) {
      height = 500;
    } else if (width >= FaoBreakpoints.lg) {
      height = 630;
    } else if (width >= FaoBreakpoints.md) {
      height = 700;
    }

    return SizedBox(
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Wrap(
            spacing: FaoSpacing.sm,
            runSpacing: FaoSpacing.sm,
            alignment: WrapAlignment.center,
            children: [
              if (message != null) ...[
                SizedBox(
                  width: constraints.maxWidth,
                  child: message,
                ),
              ],
              ...List.generate(
                17,
                (i) => FaoSdgGridItem(
                  sdgIndex: i + 1,
                  label: '${i + 1}',
                  onTap: onSdgTap != null ? () => onSdgTap!(i + 1) : null,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
