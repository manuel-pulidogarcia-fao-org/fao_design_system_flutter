import 'package:flutter/material.dart';
import '../../tokens/fao_spacing.dart';

class FaoDropdownItem<T> {
  const FaoDropdownItem({
    required this.value,
    required this.label,
  });

  final T value;
  final String label;
}

class FaoDropdown<T> extends StatelessWidget {
  const FaoDropdown({
    super.key,
    required this.items,
    this.initialValue,
    this.onChanged,
    this.hint,
    this.isExpanded = true,
  });

  final List<FaoDropdownItem<T>> items;
  final T? initialValue;
  final ValueChanged<T?>? onChanged;
  final String? hint;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DropdownButtonFormField<T>(
      initialValue: initialValue,
      onChanged: onChanged,
      hint: hint != null ? Text(hint!) : null,
      isExpanded: isExpanded,
      decoration: InputDecoration(
        filled: true,
        fillColor: theme.colorScheme.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: FaoSpacing.md,
          vertical: 12,
        ),
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<T>(
              value: item.value,
              child: Text(item.label),
            ),
          )
          .toList(),
    );
  }
}
