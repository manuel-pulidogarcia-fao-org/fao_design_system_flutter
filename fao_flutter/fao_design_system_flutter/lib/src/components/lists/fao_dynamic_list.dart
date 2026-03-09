import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import '../../utils/fao_responsive.dart';
import '../cards/fao_card.dart';

enum FaoDynamicListItemType { article, audio, video, publication, news }

class FaoDynamicListItem {
  const FaoDynamicListItem({
    required this.title,
    this.subtitle,
    this.body,
    this.thumbnail,
    this.date,
    this.onTap,
    this.type = FaoDynamicListItemType.article,
  });

  final String title;
  final String? subtitle;
  final String? body;
  final Widget? thumbnail;
  final String? date;
  final VoidCallback? onTap;
  final FaoDynamicListItemType type;
}

class FaoDynamicList extends StatelessWidget {
  const FaoDynamicList({
    super.key,
    required this.items,
    this.layout = FaoDynamicListLayout.auto,
  });

  final List<FaoDynamicListItem> items;
  final FaoDynamicListLayout layout;

  @override
  Widget build(BuildContext context) {
    final isHorizontal = layout == FaoDynamicListLayout.horizontal ||
        (layout == FaoDynamicListLayout.auto && FaoResponsive.isMd(context));

    if (isHorizontal) {
      return LayoutBuilder(
        builder: (context, constraints) {
          final crossAxisCount = constraints.maxWidth > 960 ? 2 : 1;
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 2.5,
              crossAxisSpacing: FaoSpacing.md,
              mainAxisSpacing: FaoSpacing.md,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) => _buildItem(context, items[index]),
          );
        },
      );
    }

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      separatorBuilder: (_, i) => const SizedBox(height: FaoSpacing.md),
      itemBuilder: (context, index) => _buildItem(context, items[index]),
    );
  }

  Widget _buildItem(BuildContext context, FaoDynamicListItem item) {
    return FaoCard(
      title: item.title,
      subtitle: item.subtitle,
      body: item.body,
      image: item.thumbnail,
      onTap: item.onTap,
      variant: item.type == FaoDynamicListItemType.news
          ? FaoCardVariant.newsHome
          : FaoCardVariant.article,
    );
  }
}

enum FaoDynamicListLayout { auto, horizontal, vertical }
