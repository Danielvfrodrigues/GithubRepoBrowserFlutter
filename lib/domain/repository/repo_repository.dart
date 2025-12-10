import '../../data/remote/dto/repo_dto.dart';

abstract class RepoRepository {
  Future<List<RepoDto>> searchRepos(String query);
}