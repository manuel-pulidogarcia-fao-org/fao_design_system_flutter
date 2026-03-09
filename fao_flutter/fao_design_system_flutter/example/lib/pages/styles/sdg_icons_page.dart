import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class SdgIconsPage extends StatelessWidget {
  const SdgIconsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('SDG Grid', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(
            17,
            (i) => FaoSdgGridItem(sdgIndex: i + 1, label: '${i + 1}'),
          ),
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('SDG Section', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        SizedBox(
          height: 300,
          child: FaoSdgSection(
            onSdgTap: (i) {},
          ),
        ),
      ],
    );
  }
}
