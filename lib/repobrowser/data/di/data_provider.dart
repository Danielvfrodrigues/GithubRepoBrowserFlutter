import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/network/di/network_provider.dart';
import 'package:github_repo_browser_flutter/repobrowser/data/repository/repo_repository_impl.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/repository/repo_repository.dart';

final repoRepositoryProvider = Provider<RepoRepository>((ref) {
  final apiClient = ref.watch(githubApiClientProvider);
  return RepoRepositoryImpl(apiClient);
});