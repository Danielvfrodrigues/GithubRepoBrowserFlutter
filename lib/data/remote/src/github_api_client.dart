import 'package:dio/dio.dart';

class GithubApiClient {
  final Dio dio;

  GithubApiClient({Dio? dio})
    : dio = dio ??
      Dio(
        BaseOptions(
          baseUrl: 'https://api.github.com/',
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
        ),
      );

  Future<List<dynamic>> searchRepositories(String query) async {
    final response = await dio.get('/search/repositories', queryParameters: {'q': query});
    if (response.statusCode == 200) {
      return response.data['items'] as List<dynamic>;
    } else {
      throw Exception('Failed to search repositories: ${response.statusCode}');
    }
  }
}