import 'package:flutter/material.dart';
import 'package:github_repo_browser_flutter/core/ui/widgets/icon_text.dart';
import 'package:github_repo_browser_flutter/core/ui/widgets/placeholder_container.dart';

class RepoCardPlaceholder extends StatelessWidget {
  const RepoCardPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(radius: 24, backgroundColor: theme.hoverColor),
            const SizedBox(height: 8),
            PlaceHolderContainer(height: 16),
            const SizedBox(height: 4),
            Expanded(child: PlaceHolderContainer(height: 40)),
            const SizedBox(height: 4),
            PlaceHolderContainer(height: 16, width: 60),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(icon: Icons.star, iconColor: theme.hoverColor),
                PlaceHolderContainer(height: 16, width: 30),
                IconText(icon: Icons.call_split, iconColor: theme.hoverColor),
                PlaceHolderContainer(height: 16, width: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
