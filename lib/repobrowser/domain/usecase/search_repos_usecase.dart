import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/search_repos_params.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/repository/repo_repository.dart';

abstract class SearchReposUsecase {
  Future<List<Repo>> call(SearchReposParams params);
}

class SearchReposUsecaseImpl implements SearchReposUsecase {
  final RepoRepository repository;

  SearchReposUsecaseImpl(this.repository);

  @override
  Future<List<Repo>> call(SearchReposParams params) {
    return repository.searchRepos(params);
  }
}