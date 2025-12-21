import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/repobrowser/data/remote/src/github_api_client.dart';
import 'package:github_repo_browser_flutter/repobrowser/data/repository/repo_repository_impl.dart';

final githubApiClientProvider = Provider((ref) => GithubApiClient());

final repoRepositoryProvider = Provider((ref) {
  final apiClient = ref.watch(githubApiClientProvider);
  return RepoRepositoryImpl(apiClient);
});