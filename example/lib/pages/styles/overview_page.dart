import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';
import '../../routes.dart';

class StylesOverviewPage extends StatelessWidget {
  const StylesOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          'Styles Overview',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: FaoSpacing.md),
        Text(
          'Browse all FAO Design System styles from the navigation drawer.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: FaoSpacing.xxl),
        ...AppRoutes.stylesNav.expand((s) => s.items).map((item) {
          if (item.route == AppRoutes.stylesOverview) return const SizedBox.shrink();
          return ListTile(
            title: Row(
              children: [
                Text(item.label),
                if (item.comingSoon)
                  Padding(
                    padding: const EdgeInsets.only(left: FaoSpacing.sm),
                    child: Text(
                      'Coming soon',
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ),
              ],
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: item.comingSoon ? null : () => Navigator.pushNamed(context, item.route),
          );
        }),
      ],
    );
  }
}
