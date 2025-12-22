import 'package:github_repo_browser_flutter/repobrowser/data/mapper/repo_mapper.dart';
import 'package:github_repo_browser_flutter/network/src/github_api_client.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/search_repos_params.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/repository/repo_repository.dart';

class RepoRepositoryImpl implements RepoRepository {
  final GithubApiClient api;

  RepoRepositoryImpl(this.api);

  @override
  Future<List<Repo>> searchRepos(SearchReposParams params) async {
    final data = await api.searchRepositories(
        query: params.query,
        page: params.page,
        perPage: params.perPage,
    );

    return data.map((dto) => dto.toModel()).toList();
  }
}
