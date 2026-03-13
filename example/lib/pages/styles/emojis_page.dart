import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class EmojisPage extends StatelessWidget {
  const EmojisPage({super.key});

  @override
  Widget build(BuildContext context) {
    const emojis = ['🌾', '🍎', '🌍', '💧', '🌱', '🐄', '🌿', '🥗', '📊', '🔬'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Emojis', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Text(
          'Flutter supports emoji natively in Text widgets.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: FaoSpacing.lg,
          runSpacing: FaoSpacing.lg,
          children: emojis
              .map(
                (emoji) => Text(emoji, style: const TextStyle(fontSize: 48)),
              )
              .toList(),
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text(
          'Agriculture 🌾 Food security 🍎 Climate 🌍',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
