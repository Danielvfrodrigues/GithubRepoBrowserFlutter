import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/di/domain_provider.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/state/search_ui_state.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/search_viewmodel.dart';

final repoSearchViewModelProvider =
    StateNotifierProvider<SearchViewModel, AsyncValue<SearchUiState>>((ref) {
      final usecase = ref.watch(searchReposUseCaseProvider);
      return SearchViewModel(usecase);
    });
