import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class NavbarPage extends StatelessWidget {
  const NavbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Navbar', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoNavbar(
          items: [
            FaoNavbarItem(label: 'Home', onTap: () {}),
            FaoNavbarItem(label: 'About', onTap: () {}),
            FaoNavbarItem(label: 'Publications', onTap: () {}),
            FaoNavbarItem(label: 'News', onTap: () {}),
            FaoNavbarItem(label: 'Contact', onTap: () {}),
          ],
        ),
      ],
    );
  }
}
