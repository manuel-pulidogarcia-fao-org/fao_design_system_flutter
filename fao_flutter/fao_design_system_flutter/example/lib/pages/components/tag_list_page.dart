import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class TagListPage extends StatelessWidget {
  const TagListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tag List', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoTagList(
          tags: ['Agriculture', 'Food Security', 'Climate', 'SDG', 'FAO'],
          onTagTap: (tag) {},
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('With SDG colors', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: FaoSpacing.sm,
          runSpacing: FaoSpacing.sm,
          children: [
            FaoBadge(label: 'SDG 1', color: FaoSdgColors.sdg1),
            FaoBadge(label: 'SDG 2', color: FaoSdgColors.sdg2),
            FaoBadge(label: 'SDG 3', color: FaoSdgColors.sdg3),
          ],
        ),
      ],
    );
  }
}
