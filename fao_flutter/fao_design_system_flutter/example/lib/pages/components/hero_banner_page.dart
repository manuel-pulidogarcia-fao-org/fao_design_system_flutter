import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class HeroBannerPage extends StatelessWidget {
  const HeroBannerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FaoHeroBanner(
      minHeight: 300,
      title: 'Hero Banner',
      subtitle: 'A full-width banner with title and optional link',
      linkIcon: FaoLinkIcon(
        label: 'Learn more',
        onTap: () {},
      ),
      background: Container(
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
