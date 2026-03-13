import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class ContentBlockPage extends StatelessWidget {
  const ContentBlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FaoContentBlock(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Content Block',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: FaoSpacing.md),
          Text(
            'A wrapper for content blocks with consistent padding and layout.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
