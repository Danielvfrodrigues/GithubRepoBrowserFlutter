import 'package:flutter/material.dart';
import 'package:github_repo_browser_flutter/domain/model/sort_order.dart';

class SortOptionTile extends StatelessWidget {
  final SortOrder option;
  final SortOrder selected;
  final VoidCallback onTap;

  const SortOptionTile({
    super.key,
    required this.option,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = option == selected;
    final theme = Theme.of(context);

    final color = isSelected
        ? theme.colorScheme.primary
        : theme.textTheme.bodyMedium?.color;

    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 8),
        child: Row(
          children: [
            Icon(option.icon, color: color),
            Text(
              option.label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                color: color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
