import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class LinksPage extends StatelessWidget {
  const LinksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('FaoLinkIcon', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoLinkIcon(
          label: 'Learn more',
          onTap: () {},
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('Text link with FaoColors.link', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Clickable link',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: FaoColors.link,
                  decoration: TextDecoration.underline,
                  decorationColor: FaoColors.link,
                ),
          ),
        ),
      ],
    );
  }
}
