import 'package:flutter/material.dart';
import 'package:fao_design_system_flutter/fao_design_system_flutter.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FaoDynamicList(
      items: [
        FaoDynamicListItem(
          title: 'Article 1',
          subtitle: 'Subtitle',
          body: 'Body content',
          thumbnail: Container(
            color: Colors.grey[300],
            child: const Icon(Icons.image, size: 48),
          ),
          onTap: () {},
        ),
        FaoDynamicListItem(
          title: 'Article 2',
          subtitle: 'Subtitle',
          body: 'Body content',
          thumbnail: Container(
            color: Colors.grey[300],
            child: const Icon(Icons.image, size: 48),
          ),
          onTap: () {},
        ),
        FaoDynamicListItem(
          title: 'News Item',
          type: FaoDynamicListItemType.news,
          body: 'News content',
          thumbnail: Container(
            color: Colors.grey[300],
            child: const Icon(Icons.newspaper, size: 48),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
