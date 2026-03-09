import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';

class FaoTabItem {
  const FaoTabItem({
    required this.label,
    required this.child,
  });

  final String label;
  final Widget child;
}

class FaoTabs extends StatefulWidget {
  const FaoTabs({
    super.key,
    required this.tabs,
    this.initialIndex = 0,
  });

  final List<FaoTabItem> tabs;
  final int initialIndex;

  @override
  State<FaoTabs> createState() => _FaoTabsState();
}

class _FaoTabsState extends State<FaoTabs> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: widget.tabs.length,
      vsync: this,
      initialIndex: widget.initialIndex.clamp(0, widget.tabs.length - 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.outline.withValues(alpha: 0.3),
              ),
            ),
          ),
          child: TabBar(
            controller: _controller,
            tabs: widget.tabs
                .map((t) => Tab(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: FaoSpacing.sm,
                        ),
                        child: Text(t.label),
                      ),
                    ))
                .toList(),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _controller,
            children: widget.tabs.map((t) => t.child).toList(),
          ),
        ),
      ],
    );
  }
}
