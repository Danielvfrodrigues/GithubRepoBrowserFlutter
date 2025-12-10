import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/data/di/data_module.dart';
import 'package:github_repo_browser_flutter/domain/usecase/search_repos_usecase.dart';

final searchReposUseCaseProvider = Provider<SearchReposUsecase>((ref) {
  final repository = ref.watch(repoRepositoryProvider);
  return SearchReposUsecaseImpl(repository);
});