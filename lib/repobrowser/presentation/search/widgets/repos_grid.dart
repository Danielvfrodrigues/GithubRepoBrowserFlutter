import 'package:flutter/material.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/card/repo_card.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/card/repo_card_placeholder.dart';


class ReposGrid extends StatelessWidget {
  final List<Repo> repos;
  final bool isLoading;

  const ReposGrid({
    super.key,
    this.repos = const [],
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 3 / 4,
      ),
      itemCount: isLoading ? 6 : repos.length,
      itemBuilder: (context, index) =>
          isLoading ? RepoCardPlaceholder() : RepoCard(repo: repos[index]),
    );
  }
}
