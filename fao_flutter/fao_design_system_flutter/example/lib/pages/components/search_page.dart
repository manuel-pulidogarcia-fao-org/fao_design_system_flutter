import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Search Field', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoSearchField(hint: 'Search...'),
        const SizedBox(height: FaoSpacing.xxl),
        Text('Search Button', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: FaoSpacing.md),
        FaoButton(
          variant: FaoButtonVariant.search,
          label: 'Search',
          onPressed: () {},
        ),
      ],
    );
  }
}
