import 'package:flutter/material.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/card/repo_card.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/card/repo_card_placeholder.dart';

class ReposGrid extends StatelessWidget {
  final List<Repo> repos;
  final bool isLoading;
  final bool isLoadingMore;
  final ScrollController? controller;

  const ReposGrid({
    super.key,
    this.repos = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: controller,
      gridDelegate: _buildGridDelegate(),
      itemCount: _handleItemCount(),
      itemBuilder: (_, index) => _handleItemBuilder(index),
    );
  }

  StatelessWidget _handleItemBuilder(int index) {
    final bool isLastItem = index >= repos.length;
    if (isLoading || isLastItem) return RepoCardPlaceholder();
    return RepoCard(repo: repos[index]);
  }

  int _handleItemCount() {
    if (isLoading) return 6;
    return repos.length + (isLoadingMore ? 2 : 0);
  }

  SliverGridDelegate _buildGridDelegate() {
    return const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      childAspectRatio: 3 / 4,
    );
  }
}
