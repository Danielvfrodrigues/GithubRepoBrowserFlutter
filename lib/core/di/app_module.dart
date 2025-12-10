import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/data/remote/dto/repo_dto.dart';
import 'package:github_repo_browser_flutter/data/remote/src/github_api_client.dart';
import 'package:github_repo_browser_flutter/data/repository/repo_repository_impl.dart';
import 'package:github_repo_browser_flutter/domain/usecase/search_repos_usecase.dart';
import 'package:github_repo_browser_flutter/presentation/search/search_controller.dart';

final reposControllerProvider =
    StateNotifierProvider<SearchController, AsyncValue<List<RepoDto>>>((ref) {
      final usecase = ref.watch(searchReposUseCaseProvider);
      return SearchController(usecase);
    });

final searchReposUseCaseProvider = Provider<SearchReposUsecase>((ref) {
  final repository = ref.watch(repoRepositoryProvider);
  return SearchReposUsecaseImpl(repository);
});

final repoRepositoryProvider = Provider((ref) {
  final apiClient = ref.watch(githubApiClientProvider);
  return RepoRepositoryImpl(apiClient);
});

final githubApiClientProvider = Provider((ref) => GithubApiClient());
