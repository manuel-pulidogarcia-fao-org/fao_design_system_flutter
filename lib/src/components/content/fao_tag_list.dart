import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import 'fao_badge.dart';

class FaoTagList extends StatelessWidget {
  const FaoTagList({
    super.key,
    required this.tags,
    this.onTagTap,
  });

  final List<String> tags;
  final ValueChanged<String>? onTagTap;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: FaoSpacing.sm,
      runSpacing: FaoSpacing.sm,
      children: tags
          .map((tag) => GestureDetector(
                onTap: onTagTap != null ? () => onTagTap!(tag) : null,
                child: FaoBadge(label: tag),
              ))
          .toList(),
    );
  }
}
