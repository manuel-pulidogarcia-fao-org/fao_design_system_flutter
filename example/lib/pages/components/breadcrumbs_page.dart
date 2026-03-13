import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class BreadcrumbsPage extends StatelessWidget {
  const BreadcrumbsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FaoBreadcrumb(
      items: [
        FaoBreadcrumbItem(label: 'Home', onTap: () {}),
        FaoBreadcrumbItem(label: 'Section', onTap: () {}),
        FaoBreadcrumbItem(label: 'Current'),
      ],
    );
  }
}
