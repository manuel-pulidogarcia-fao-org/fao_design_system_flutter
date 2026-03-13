import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class EmbedsPage extends StatelessWidget {
  const EmbedsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('FaoEmbed', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        Text(
          'Aspect-ratio wrapper for iframe, video, or embed content.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: FaoSpacing.md),
        FaoEmbed(
          child: Container(
            color: Colors.grey[300],
            child: const Center(
              child: Icon(Icons.video_library, size: 64),
            ),
          ),
        ),
      ],
    );
  }
}
