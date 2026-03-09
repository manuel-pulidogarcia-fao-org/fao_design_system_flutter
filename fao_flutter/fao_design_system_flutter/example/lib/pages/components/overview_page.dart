import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';
import '../../routes.dart';

class ComponentsOverviewPage extends StatelessWidget {
  const ComponentsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          'Components Overview',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(height: FaoSpacing.md),
        Text(
          'Browse all FAO Design System components from the navigation drawer.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: FaoSpacing.xxl),
        ...AppRoutes.componentsNav.expand((s) => s.items).map((item) {
          if (item.route == AppRoutes.componentsOverview) return const SizedBox.shrink();
          return ListTile(
            title: Text(item.label),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () => Navigator.pushNamed(context, item.route),
          );
        }),
      ],
    );
  }
}
