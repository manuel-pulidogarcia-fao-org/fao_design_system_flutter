import 'package:flutter/material.dart';
import '../../tokens/fao_sdg_colors.dart';

class FaoSdgGridItem extends StatelessWidget {
  const FaoSdgGridItem({
    super.key,
    required this.sdgIndex,
    this.size = 70,
    this.label,
    this.onTap,
  });

  final int sdgIndex;
  final double size;
  final String? label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final color = FaoSdgColors.forSdg(sdgIndex);
    final theme = Theme.of(context);

    return Material(
      color: color,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(5),
        child: SizedBox(
          width: size,
          height: size,
          child: label != null
              ? Center(
                  child: Text(
                    label!,
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
