import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class IconsPage extends StatelessWidget {
  const IconsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.home,
      Icons.search,
      Icons.menu,
      Icons.settings,
      Icons.person,
      Icons.email,
      Icons.phone,
      Icons.location_on,
      Icons.calendar_today,
      Icons.share,
      Icons.favorite,
      Icons.bookmark,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Material Icons', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Text(
          'Use Material Icons with Icon widget.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: FaoSpacing.md),
        Wrap(
          spacing: FaoSpacing.lg,
          runSpacing: FaoSpacing.lg,
          children: icons
              .map(
                (icon) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(icon, size: 32),
                    const SizedBox(height: 4),
                    Text(
                      icon.toString().split('.').last,
                      style: Theme.of(context).textTheme.labelSmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
