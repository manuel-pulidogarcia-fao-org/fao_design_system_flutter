import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Variants', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: FaoSpacing.md,
          runSpacing: FaoSpacing.md,
          children: [
            FaoButton(label: 'Primary', onPressed: () {}),
            FaoButton(
              label: 'With Icon',
              icon: Icons.add,
              iconPosition: IconPosition.right,
              onPressed: () {},
            ),
            FaoButton(
              label: 'Secondary',
              variant: FaoButtonVariant.secondary,
              onPressed: () {},
            ),
            FaoButton(
              label: 'Outline',
              variant: FaoButtonVariant.outline,
              onPressed: () {},
            ),
            FaoButton(
              label: 'Link',
              variant: FaoButtonVariant.link,
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('Sizes', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: FaoSpacing.md,
          runSpacing: FaoSpacing.md,
          children: [
            FaoButton(label: 'Default', onPressed: () {}),
            FaoButton(
              label: 'Large',
              size: FaoButtonSize.large,
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('Icon variants', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: FaoSpacing.md,
          runSpacing: FaoSpacing.md,
          children: [
            FaoButton(
              variant: FaoButtonVariant.icon,
              icon: Icons.settings,
              onPressed: () {},
            ),
            FaoButton(
              variant: FaoButtonVariant.round,
              icon: Icons.add,
              onPressed: () {},
            ),
            FaoButton(
              variant: FaoButtonVariant.search,
              label: 'Search',
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
