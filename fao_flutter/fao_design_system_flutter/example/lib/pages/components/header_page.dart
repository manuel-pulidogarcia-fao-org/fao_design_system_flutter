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
          logo: FaoLogo(language: FaoLogoLanguage.zh, variant: FaoLogoVariant.blue, height: 36),
          rightActions: [
            IconButton(icon: const Icon(Icons.search), onPressed: () {}),
            IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
          ],
        ),
        const SizedBox(height: FaoSpacing.md),
        FaoHeader(
          logo: FaoLogo(language: FaoLogoLanguage.zh, variant: FaoLogoVariant.blue, height: 36),
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
