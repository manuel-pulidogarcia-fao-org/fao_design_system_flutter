import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Card with image', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoCard(
          title: 'Image in card',
          body: 'Card with placeholder image',
          image: Container(
            color: Colors.grey[300],
            child: const Icon(Icons.image, size: 64),
          ),
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('Hero banner background', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoHeroBanner(
          minHeight: 200,
          title: 'Hero with image',
          background: Container(
            color: Colors.grey[400],
            child: const Icon(Icons.landscape, size: 64, color: Colors.white54),
          ),
        ),
      ],
    );
  }
}
