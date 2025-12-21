import 'package:dio/dio.dart';
import 'package:github_repo_browser_flutter/network/dto/repo_dto.dart';

class GithubApiClient {
  final Dio dio;

  GithubApiClient({Dio? dio})
    : dio =
          dio ??
          Dio(
            BaseOptions(
              baseUrl: 'https://api.github.com/',
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
            ),
          );

  Future<List<RepoDto>> searchRepositories({
    required String query,
    int page = 1,
    int perPage = 20,
  }) async {
    final response = await dio.get(
      '/search/repositories',
      queryParameters: {
        'q': query,
        'page': page,
        'per_page': perPage
      },
    );

    final data = response.data['items'] as List<dynamic>;

    return data
        .map((e) => RepoDto.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
