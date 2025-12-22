import 'package:dio/dio.dart';
import 'package:github_repo_browser_flutter/network/dto/repo_dto.dart';
import 'package:github_repo_browser_flutter/network/dto/search_response_dto.dart';

class GithubApiClient {
  final Dio dio;

  GithubApiClient(this.dio);

  Future<List<RepoDto>> searchRepositories({
    required String query,
    int page = 1,
    int perPage = 20,
  }) async {
    final response = await dio.get(
      '/search/repositories',
      queryParameters: {'q': query, 'page': page, 'per_page': perPage},
    );

    return SearchResponseDto.fromJson(response.data!).items;
  }
}
