import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class CountryFlagsPage extends StatelessWidget {
  const CountryFlagsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const flags = ['🇺🇸', '🇬🇧', '🇫🇷', '🇩🇪', '🇮🇹', '🇪🇸', '🇯🇵', '🇨🇳', '🇧🇷', '🇮🇳', '🇦🇫', '🇦🇺'];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Country Flags', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Text(
          'Emoji flags for country selection.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: FaoSpacing.lg,
          runSpacing: FaoSpacing.lg,
          children: flags
              .map(
                (flag) => Container(
                  padding: const EdgeInsets.all(FaoSpacing.sm),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).colorScheme.outline),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(flag, style: const TextStyle(fontSize: 32)),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
