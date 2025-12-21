
import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';

abstract class RepoRepository {
  Future<List<Repo>> searchRepos(String query);
}