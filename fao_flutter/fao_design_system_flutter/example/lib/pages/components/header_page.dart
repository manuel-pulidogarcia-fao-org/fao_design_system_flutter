import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FaoHeader(
          logo: Text(
            'FAO',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w800,
                ),
          ),
          rightActions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          ],
        ),
        const SizedBox(height: FaoSpacing.md),
        FaoHeader(
          logo: Text(
            'FAO',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w800,
                ),
          ),
          subheader: FaoCustomSubHeader(
            left: FaoNavbar(
              items: [
                FaoNavbarItem(label: 'Home', onTap: () {}),
                FaoNavbarItem(label: 'About', onTap: () {}),
                FaoNavbarItem(label: 'Contact', onTap: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
