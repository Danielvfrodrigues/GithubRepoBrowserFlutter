
import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/search_repos_params.dart';

abstract class RepoRepository {
  Future<List<Repo>> searchRepos(SearchReposParams params);
}