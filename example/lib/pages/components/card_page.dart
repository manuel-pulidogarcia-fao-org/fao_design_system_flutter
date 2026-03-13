import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Article Card', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoCard(
          title: 'Article Card',
          subtitle: 'Sample subtitle',
          body: 'Card body text',
          image: Container(
            color: Colors.grey[300],
            child: const Icon(Icons.image, size: 48),
          ),
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('News Card', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoCard(
          title: 'News Card',
          variant: FaoCardVariant.newsHome,
          body: 'News content preview',
          image: Container(
            color: Colors.grey[300],
            child: const Icon(Icons.newspaper, size: 48),
          ),
        ),
        const SizedBox(height: FaoSpacing.xxl),
        Text('Data Card', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoDataCard(
          title: 'Data Point',
          subtitle: 'Description',
          value: '1.2M',
        ),
      ],
    );
  }
}
