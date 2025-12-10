import 'package:github_repo_browser_flutter/data/remote/dto/repo_dto.dart';
import 'package:github_repo_browser_flutter/domain/repository/repo_repository.dart';

abstract class SearchReposUsecase {
  Future<List<RepoDto>> call(String query);
}

class SearchReposUsecaseImpl implements SearchReposUsecase {
  final RepoRepository repository;

  SearchReposUsecaseImpl(this.repository);

  @override
  Future<List<RepoDto>> call(String query) {
    return repository.searchRepos(query);
  }
}