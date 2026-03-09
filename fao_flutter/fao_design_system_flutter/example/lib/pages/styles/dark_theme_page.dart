import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class DarkThemePage extends StatelessWidget {
  const DarkThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dark Theme',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: FaoSpacing.md),
        Container(
          padding: const EdgeInsets.all(FaoSpacing.md),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Text(
            'Dark theme is available via FaoTheme.dark(). Switch using the theme selector in the app bar.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
