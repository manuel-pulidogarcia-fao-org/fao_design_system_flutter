import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';

class FaoHeader extends StatelessWidget implements PreferredSizeWidget {
  const FaoHeader({
    super.key,
    this.logo,
    this.partnerLogo,
    this.leftActions,
    this.rightActions,
    this.subheader,
    this.height = 50,
  });

  final Widget? logo;
  final Widget? partnerLogo;
  final List<Widget>? leftActions;
  final List<Widget>? rightActions;
  final Widget? subheader;
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(subheader != null ? height * 2 : height);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: height,
          padding: const EdgeInsets.symmetric(horizontal: FaoSpacing.md),
          child: Row(
            children: [
              if (logo != null) ...[
                SizedBox(
                  height: height,
                  child: logo,
                ),
                const SizedBox(width: 40),
              ],
              if (partnerLogo != null) ...[
                SizedBox(
                  height: height,
                  child: partnerLogo,
                ),
                const SizedBox(width: FaoSpacing.md),
              ],
              if (leftActions != null && leftActions!.isNotEmpty)
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: leftActions!
                        .map((w) => Padding(
                              padding: const EdgeInsets.only(right: FaoSpacing.md),
                              child: w,
                            ))
                        .toList(),
                  ),
                )
              else
                const Spacer(),
              if (rightActions != null && rightActions!.isNotEmpty)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: rightActions!
                      .map((w) => Padding(
                            padding: const EdgeInsets.only(left: FaoSpacing.sm),
                            child: w,
                          ))
                      .toList(),
                ),
            ],
          ),
        ),
        if (subheader != null)
          Container(
            width: double.infinity,
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            child: subheader,
          ),
      ],
    );
  }
}
