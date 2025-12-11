import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/data/remote/dto/repo_dto.dart';
import 'package:github_repo_browser_flutter/domain/model/sort_order.dart';
import 'package:github_repo_browser_flutter/domain/usecase/search_repos_usecase.dart';

class SearchController extends StateNotifier<AsyncValue<List<RepoDto>>> {
  final SearchReposUsecase _usecase;
  SortOrder sortOrder = SortOrder.stars;

  final defaultQuery = "stars:>1000";

  SearchController(this._usecase) : super(const AsyncValue.data([])) {
    search(defaultQuery);
  }

  Future<void> search(String? query) async {
    state = const AsyncValue.loading();
    try {
      final repos = await _usecase.call(query ?? defaultQuery);
      state = AsyncValue.data(repos);
    } catch (error, stackTrace) {
      state = AsyncValue.error(error, stackTrace);
    }
  }

  void setSortOrder(SortOrder order) {
    sortOrder = order;
    // TODO sort in database
  }
}
