import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class TabbedContentPage extends StatelessWidget {
  const TabbedContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: FaoTabs(
        tabs: [
          FaoTabItem(
            label: 'Tab 1',
            child: Center(
              child: Text(
                'Content for Tab 1',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          FaoTabItem(
            label: 'Tab 2',
            child: Center(
              child: Text(
                'Content for Tab 2',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
          FaoTabItem(
            label: 'Tab 3',
            child: Center(
              child: Text(
                'Content for Tab 3',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
