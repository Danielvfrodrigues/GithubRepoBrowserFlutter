import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/network/src/github_api_client.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: 'https://api.github.com/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );
});

final githubApiClientProvider = Provider<GithubApiClient>((ref) {
  final dio = ref.watch(dioProvider);
  return GithubApiClient(dio);
});
