import 'package:flutter/material.dart';
import 'package:github_repo_browser_flutter/core/ui/widgets/icon_text.dart';
import 'package:github_repo_browser_flutter/data/remote/dto/repo_dto.dart';

class RepoCard extends StatelessWidget {
  final RepoDto repo;

  const RepoCard({super.key, required this.repo});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: NetworkImage(repo.owner.avatarUrl),
            ),

            const SizedBox(height: 8),

            Text(
              repo.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            Expanded(
              child: Text(
                repo.description ?? 'Unknown',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            const SizedBox(height: 4),

            Text(repo.owner.login, style: const TextStyle(color: Colors.blue)),

            const SizedBox(height: 4),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(icon: Icons.star, text: repo.stargazersCount.toString()),
                IconText(icon: Icons.call_split, text: repo.forksCount.toString()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
