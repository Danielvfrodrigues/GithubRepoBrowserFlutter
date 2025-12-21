import 'dart:async';

import 'package:flutter/material.dart';

class RepoSearchBar extends StatefulWidget {
  final void Function(String) onChanged;
  final void Function() onClear;
  final Duration debounceDuration;

  const RepoSearchBar({
    super.key,
    required this.onChanged,
    required this.onClear,
    this.debounceDuration = const Duration(microseconds: 300),
  });

  @override
  State<RepoSearchBar> createState() => _RepoSearchBarState();
}

class _RepoSearchBarState extends State<RepoSearchBar> {
  final searchController = TextEditingController();
  Timer? _debounce;

  @override
  void dispose() {
    searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  void _handleChange(String text) {
    if (widget.debounceDuration == Duration.zero) {
      widget.onChanged(text);
      return;
    }

    _debounce?.cancel();
    _debounce = Timer(widget.debounceDuration, () {
      widget.onChanged(text);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return ValueListenableBuilder<TextEditingValue>(
      valueListenable: searchController,
      builder: (context, value, _) {
        final hasText = value.text.isNotEmpty;

        return SearchBar(
          controller: searchController,
          hintText: 'Filter by language',
          backgroundColor: WidgetStateProperty.all(theme.surfaceContainerLow),
          elevation: WidgetStateProperty.all(1),
          onChanged: _handleChange,
          trailing: [
            AnimatedOpacity(
              opacity: hasText ? 1 : 0,
              duration: const Duration(milliseconds: 200),
              child: _toggleClearButton(hasText),
            ),
          ],
        );
      },
    );
  }

  Widget _toggleClearButton(bool hasText) {
    return hasText
        ? IconButton(
            onPressed: () {
              searchController.clear();
              widget.onClear();
            },
            icon: const Icon(Icons.clear),
          )
        : const SizedBox.shrink();
  }
}
