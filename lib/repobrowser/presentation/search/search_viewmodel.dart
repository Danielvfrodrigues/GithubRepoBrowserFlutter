import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/search_repos_params.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/sort_order.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/usecase/search_repos_usecase.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/state/search_ui_state.dart';

class SearchViewModel extends StateNotifier<AsyncValue<SearchUiState>> {
  final SearchReposUsecase searchReposUsecase;
  final defaultQuery = "stars:>1000";
  SortOrder sortOrder = SortOrder.stars;

  static const _perPage = 20;

  SearchViewModel(this.searchReposUsecase)
    : super(const AsyncValue.data(SearchUiState())) {
    search(defaultQuery);
  }

  SearchUiState get _data => state.requireValue;

  Future<void> search(String? query) async {
    state = const AsyncValue.loading();

    try {
      final repos = await searchReposUsecase(
        SearchReposParams(query: query ?? defaultQuery, page: 1, perPage: _perPage),
      );

      state = AsyncValue.data(
        SearchUiState(
          repos: repos,
          page: 1,
          hasMore: repos.length == _perPage,
          query: query?? defaultQuery,
        ),
      );
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> loadMore() async {
    final current = _data;

    if (current.isLoadingMore || !current.hasMore) return;

    state = AsyncValue.data(current.copyWith(isLoadingMore: true));

    final nextPage = current.page + 1;

    final repos = await searchReposUsecase(
      SearchReposParams(
        query: current.query,
        page: nextPage,
        perPage: _perPage,
      ),
    );

    try {
      state = AsyncValue.data(
        current.copyWith(
          repos: [...current.repos, ...repos],
          page: nextPage,
          isLoadingMore: false,
          hasMore: repos.length == _perPage,
        ),
      );
    } catch (_) {
      state = AsyncValue.data(current.copyWith(isLoadingMore: false));
    }
  }

  void setSortOrder(SortOrder order) {
    sortOrder = order;
    // TODO sort in database
  }
}
