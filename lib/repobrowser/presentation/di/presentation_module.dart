import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/di/domain_module.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/search_controller.dart';

final searchControllerProvider =
StateNotifierProvider<SearchController, AsyncValue<List<Repo>>>((ref) {
  final usecase = ref.watch(searchReposUseCaseProvider);
  return SearchController(usecase);
});
