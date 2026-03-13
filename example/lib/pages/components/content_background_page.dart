import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class ContentBackgroundPage extends StatelessWidget {
  const ContentBackgroundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FaoContentBackground(
          variant: FaoContentBackgroundVariant.primary,
          child: Text(
            'Primary background',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: FaoColors.onPrimary,
                ),
          ),
        ),
        FaoContentBackground(
          variant: FaoContentBackgroundVariant.grayLight,
          child: Text(
            'Gray light background',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        FaoContentBackground(
          variant: FaoContentBackgroundVariant.grayDark,
          child: Text(
            'Gray dark background',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: FaoColors.onPrimary,
                ),
          ),
        ),
        FaoContentBackground(
          variant: FaoContentBackgroundVariant.primaryLight,
          child: Text(
            'Primary light background',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
