import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/data/remote/dto/repo_dto.dart';
import 'package:github_repo_browser_flutter/domain/di/domain_module.dart';
import 'package:github_repo_browser_flutter/presentation/search/search_controller.dart';

final searchControllerProvider =
StateNotifierProvider<SearchController, AsyncValue<List<RepoDto>>>((ref) {
  final usecase = ref.watch(searchReposUseCaseProvider);
  return SearchController(usecase);
});
