import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FaoFooter(
      copyright: 'FAO Design System',
      linkColumns: [
        [
          FaoFooterLink(label: 'About', onTap: () {}),
          FaoFooterLink(label: 'Contact', onTap: () {}),
        ],
        [
          FaoFooterLink(label: 'Privacy', onTap: () {}),
          FaoFooterLink(label: 'Terms', onTap: () {}),
        ],
      ],
    );
  }
}
