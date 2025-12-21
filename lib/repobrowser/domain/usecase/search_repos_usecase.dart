import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/repository/repo_repository.dart';

abstract class SearchReposUsecase {
  Future<List<Repo>> call(String query);
}

class SearchReposUsecaseImpl implements SearchReposUsecase {
  final RepoRepository repository;

  SearchReposUsecaseImpl(this.repository);

  @override
  Future<List<Repo>> call(String query) {
    return repository.searchRepos(query);
  }
}