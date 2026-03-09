# FAO Design System Flutter

Flutter implementation of the FAO Design System (v3.6.6). Provides reusable components, themes, and design tokens for FAO-branded Flutter applications.

## Features

- Design tokens (colors, spacing, typography, breakpoints)
- Three themes: Light, Dark, International Year
- Core components: Button, Card, Container, Section, Badge
- Navigation: Header, Breadcrumb, Dropdown
- Forms: TextField, SearchField
- Content: HeroBanner, Accordion, DynamicList
- Specialized: DataCard, SdgGridItem, PodcastCard, PreLoader

## Getting started

Add the dependency:

```yaml
dependencies:
  fao_design_system_flutter:
    git:
      url: https://github.com/YOUR_ORG/fao_design_system_flutter.git
      ref: main
```

Or from pub.dev (when published):

```yaml
dependencies:
  fao_design_system_flutter: ^3.6.6
```

## Usage

```dart
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

void main() async {
  runApp(MaterialApp(
    theme: await FaoTheme.light(),
    home: Scaffold(
      body: FaoContainer(
        child: Column(
          children: [
            FaoButton(label: 'Primary', onPressed: () {}),
            FaoCard(title: 'Card', body: 'Content'),
          ],
        ),
      ),
    ),
  ));
}
```

Run the example app to see all components:

```bash
cd example && flutter run
```

## Additional information

Based on the FAO Design System CSS package (fao-design-system v3.6.6).
