import 'package:flutter/material.dart';
import 'fao_text_field.dart';

class FaoSearchField extends StatelessWidget {
  const FaoSearchField({
    super.key,
    this.controller,
    this.hint = 'Search',
    this.onChanged,
    this.onSubmitted,
    this.onSearch,
  });

  final TextEditingController? controller;
  final String hint;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final VoidCallback? onSearch;

  @override
  Widget build(BuildContext context) {
    return FaoTextField(
      controller: controller,
      hint: hint,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      textInputAction: TextInputAction.search,
      prefixIcon: const Icon(Icons.search),
      suffixIcon: onSearch != null
          ? IconButton(
              icon: const Icon(Icons.search),
              onPressed: onSearch,
            )
          : null,
    );
  }
}
