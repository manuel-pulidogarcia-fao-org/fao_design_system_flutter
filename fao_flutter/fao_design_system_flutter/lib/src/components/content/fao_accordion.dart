import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';
import '../../tokens/fao_colors.dart';

class FaoAccordionItem {
  const FaoAccordionItem({
    required this.header,
    required this.body,
  });

  final String header;
  final Widget body;
}

class FaoAccordion extends StatefulWidget {
  const FaoAccordion({
    super.key,
    required this.items,
    this.initiallyExpanded,
  });

  final List<FaoAccordionItem> items;
  final int? initiallyExpanded;

  @override
  State<FaoAccordion> createState() => _FaoAccordionState();
}

class _FaoAccordionState extends State<FaoAccordion> {
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _expandedIndex = widget.initiallyExpanded;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        for (var i = 0; i < widget.items.length; i++) ...[
          Container(
            decoration: BoxDecoration(
              color: _expandedIndex == i
                  ? FaoColors.accordionActiveBg
                  : FaoColors.accordionBtnBg,
              border: Border(
                bottom: BorderSide(
                  color: theme.colorScheme.outline.withValues(alpha: 0.2),
                ),
              ),
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _expandedIndex = _expandedIndex == i ? null : i;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: FaoSpacing.md,
                      vertical: FaoSpacing.md,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.items[i].header,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: _expandedIndex == i
                                  ? FaoColors.accordionActiveColor
                                  : theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                        Icon(
                          _expandedIndex == i
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          color: theme.colorScheme.onSurface,
                        ),
                      ],
                    ),
                  ),
                ),
                if (_expandedIndex == i)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: FaoSpacing.md,
                      vertical: FaoSpacing.md,
                    ),
                    color: FaoColors.accordionBg,
                    child: widget.items[i].body,
                  ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}
