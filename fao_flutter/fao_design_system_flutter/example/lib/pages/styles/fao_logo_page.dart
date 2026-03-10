import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class FaoLogoPage extends StatefulWidget {
  const FaoLogoPage({super.key});

  @override
  State<FaoLogoPage> createState() => _FaoLogoPageState();
}

class _FaoLogoPageState extends State<FaoLogoPage> {
  FaoLogoLanguage _language = FaoLogoLanguage.en;
  FaoLogoVariant _variant = FaoLogoVariant.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('FAO Logo', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.sm),
        Text(
          'Blue or black on light backgrounds, white on dark. Blue is available for zh only; black and white for all languages.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: FaoSpacing.lg),
        Row(
          children: [
            DropdownButton<FaoLogoLanguage>(
              value: _language,
              hint: const Text('Language'),
              items: FaoLogoLanguage.values
                  .map((l) => DropdownMenuItem(
                        value: l,
                        child: Text(l.name.toUpperCase()),
                      ))
                  .toList(),
              onChanged: (v) => setState(() => _language = v ?? FaoLogoLanguage.en),
            ),
            const SizedBox(width: FaoSpacing.md),
            DropdownButton<FaoLogoVariant>(
              value: _variant,
              hint: const Text('Variant'),
              items: const [
                DropdownMenuItem(value: FaoLogoVariant.blue, child: Text('Blue')),
                DropdownMenuItem(value: FaoLogoVariant.white, child: Text('White')),
                DropdownMenuItem(value: FaoLogoVariant.black, child: Text('Black')),
              ],
              onChanged: (v) => setState(() => _variant = v ?? FaoLogoVariant.blue),
            ),
          ],
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('Light background', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: FaoSpacing.md),
        Container(
          padding: const EdgeInsets.all(FaoSpacing.lg),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Theme.of(context).colorScheme.outline),
            borderRadius: BorderRadius.circular(8),
          ),
          child: FaoLogo(
            language: _language,
            variant: _variant,
            height: 56,
          ),
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('Dark background', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: FaoSpacing.md),
        Container(
          padding: const EdgeInsets.all(FaoSpacing.lg),
          decoration: BoxDecoration(
            color: FaoColors.primary,
            borderRadius: BorderRadius.circular(8),
          ),
          child: FaoLogo(
            language: _language,
            variant: FaoLogoVariant.white,
            height: 56,
          ),
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('All languages (white)', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: FaoSpacing.md),
        Container(
          padding: const EdgeInsets.all(FaoSpacing.md),
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Wrap(
            spacing: FaoSpacing.lg,
            runSpacing: FaoSpacing.lg,
            children: FaoLogoLanguage.values
                .map(
                  (lang) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaoLogo(
                        language: lang,
                        variant: FaoLogoVariant.white,
                        height: 40,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        lang.name.toUpperCase(),
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Colors.white70,
                            ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('All languages (black)', style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: FaoSpacing.md),
        Container(
          padding: const EdgeInsets.all(FaoSpacing.md),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(color: Theme.of(context).colorScheme.outline),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Wrap(
            spacing: FaoSpacing.lg,
            runSpacing: FaoSpacing.lg,
            children: FaoLogoLanguage.values
                .map(
                  (lang) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FaoLogo(
                        language: lang,
                        variant: FaoLogoVariant.black,
                        height: 40,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        lang.name.toUpperCase(),
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
