import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class _ColorSwatch extends StatelessWidget {
  const _ColorSwatch({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey.shade300),
          ),
        ),
        const SizedBox(height: 4),
        Text(label, style: Theme.of(context).textTheme.labelSmall),
      ],
    );
  }
}

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Primary Colors', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            _ColorSwatch(color: FaoColors.primary, label: 'Primary'),
            _ColorSwatch(color: FaoColors.primaryLight, label: 'Primary Light'),
            _ColorSwatch(color: FaoColors.link, label: 'Link'),
            _ColorSwatch(color: FaoColors.onBackground, label: 'On Bg'),
            _ColorSwatch(color: FaoColors.orange, label: 'Orange'),
            _ColorSwatch(color: FaoColors.emergency, label: 'Emergency'),
            _ColorSwatch(color: FaoColors.unBlue, label: 'UN Blue'),
          ],
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('SDG Colors', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: List.generate(
            17,
            (i) => _ColorSwatch(
              color: FaoSdgColors.forSdg(i + 1),
              label: '${i + 1}',
            ),
          ),
        ),
      ],
    );
  }
}
