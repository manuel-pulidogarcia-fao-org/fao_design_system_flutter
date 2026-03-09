import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class AccordionPage extends StatelessWidget {
  const AccordionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FaoAccordion(
      items: [
        FaoAccordionItem(
          header: 'Item 1',
          body: const Text('Accordion body content for item 1'),
        ),
        FaoAccordionItem(
          header: 'Item 2',
          body: const Text('Accordion body content for item 2'),
        ),
        FaoAccordionItem(
          header: 'Item 3',
          body: const Text('Accordion body content for item 3'),
        ),
      ],
      initiallyExpanded: 0,
    );
  }
}
