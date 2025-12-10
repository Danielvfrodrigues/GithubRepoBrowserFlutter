import 'package:github_repo_browser_flutter/data/remote/dto/repo_dto.dart';
import 'package:github_repo_browser_flutter/data/remote/src/github_api_client.dart';
import 'package:github_repo_browser_flutter/domain/repository/repo_repository.dart';

class RepoRepositoryImpl implements RepoRepository {
  final GithubApiClient api;

  RepoRepositoryImpl(this.api);

  @override
  Future<List<RepoDto>> searchRepos(String query) async {
    final data = await api.searchRepositories(query);
    return data.map((e) => RepoDto.fromJson(e as Map<String, dynamic>)).toList();
  }
}