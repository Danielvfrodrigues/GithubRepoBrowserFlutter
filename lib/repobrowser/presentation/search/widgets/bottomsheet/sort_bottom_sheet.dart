import 'package:flutter/material.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/sort_order.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/bottomsheet/sort_option_tile.dart';

class SortBottomSheet extends StatelessWidget {
  final SortOrder selected;
  final ValueChanged<SortOrder> onSelected;

  const SortBottomSheet({
    super.key,
    required this.selected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: theme.scaffoldBackgroundColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildBottomSheetHeader(theme),
            const SizedBox(height: 24),
            _buildSortOptionTiles(),
            const SizedBox(height: 14),
          ],
        ),
      ),
    );
  }

  Column _buildBottomSheetHeader(ThemeData theme) {
    return Column(
      children: [
        Container(
          width: 40,
          height: 5,
          decoration: BoxDecoration(
            color: theme.dividerColor.withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(30),
          ),
        ),

        const SizedBox(height: 20),

        Text(
          'Sort repositories by',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Column _buildSortOptionTiles() {
    return Column(
      children: [
        SortOptionTile(
          option: SortOrder.stars,
          selected: selected,
          onTap: () => onSelected(SortOrder.stars),
        ),
        SortOptionTile(
          option: SortOrder.forks,
          selected: selected,
          onTap: () => onSelected(SortOrder.forks),
        ),
        SortOptionTile(
          option: SortOrder.updatedAt,
          selected: selected,
          onTap: () => onSelected(SortOrder.updatedAt),
        ),
      ],
    );
  }
}
