import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class CustomSubHeaderPage extends StatelessWidget {
  const CustomSubHeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        FaoCustomSubHeader(
          left: Text(
            'Left content',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          right: FaoButton(
            label: 'Action',
            onPressed: () {},
          ),
        ),
        const SizedBox(height: FaoSpacing.md),
        FaoCustomSubHeader(
          left: FaoNavbar(
            items: [
              FaoNavbarItem(label: 'Link 1', onTap: () {}),
              FaoNavbarItem(label: 'Link 2', onTap: () {}),
              FaoNavbarItem(label: 'Link 3', onTap: () {}),
            ],
          ),
          right: SizedBox(
            width: 200,
            child: FaoSearchField(hint: 'Search...'),
          ),
        ),
      ],
    );
  }
}
