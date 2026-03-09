import 'package:flutter/material.dart';

class TypographyPage extends StatelessWidget {
  const TypographyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Display', style: theme.displayLarge),
        const SizedBox(height: 8),
        Text('Display Medium', style: theme.displayMedium),
        const SizedBox(height: 8),
        Text('Display Small', style: theme.displaySmall),
        const SizedBox(height: 24),
        Text('Headline Large', style: theme.headlineLarge),
        const SizedBox(height: 8),
        Text('Headline Medium', style: theme.headlineMedium),
        const SizedBox(height: 8),
        Text('Headline Small', style: theme.headlineSmall),
        const SizedBox(height: 24),
        Text('Title Large', style: theme.titleLarge),
        const SizedBox(height: 8),
        Text('Title Medium', style: theme.titleMedium),
        const SizedBox(height: 8),
        Text('Title Small', style: theme.titleSmall),
        const SizedBox(height: 24),
        Text('Body Large', style: theme.bodyLarge),
        const SizedBox(height: 8),
        Text('Body Medium', style: theme.bodyMedium),
        const SizedBox(height: 8),
        Text('Body Small', style: theme.bodySmall),
      ],
    );
  }
}
