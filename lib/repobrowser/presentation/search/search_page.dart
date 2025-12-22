import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/core/ui/widgets/custom_snack_bar.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/di/presentation_provider.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/state/search_ui_state.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/search_viewmodel.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/bottomsheet/show_sort_bottom_sheet.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/repo_search_app_bar.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/repos_grid.dart';
import 'package:github_repo_browser_flutter/repobrowser/presentation/search/widgets/search_bar.dart';
import 'package:logger/logger.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  late final SearchViewModel _viewModel;
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(repoSearchViewModelProvider.notifier);
    _scrollController = ScrollController()..addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 300) {
      _viewModel.loadMore();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(repoSearchViewModelProvider, (prev, next) {
      next.whenOrNull(
        error: (err, st) {
          _handleError(err, st);
        },
      );
    });

    final reposState = ref.watch(repoSearchViewModelProvider);

    return Scaffold(
      appBar: RepoSearchAppBar(
        icon: Icon(Icons.filter_list),
        onPressed: () => _handleSort(),
      ),
      body: _buildBody(reposState),
    );
  }

  Widget _buildBody(AsyncValue reposState) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
      child: Column(
        children: [
          // SearchBar
          RepoSearchBar(
            onChanged: (query) => _viewModel.search(query),
            onClear: () => _viewModel.search(null),
          ),
          const SizedBox(height: 12),

          // Data
          Expanded(
            child: reposState.when(
              loading: () => _handleLoading(),
              data: (state) => _handleData(state),
              error: (e, st) => _handleError(e, st),
            ),
          ),
        ],
      ),
    );
  }

  void _handleSort() {
    showSortBottomSheet(
      context: context,
      selected: _viewModel.sortOrder,
      onSelected: (order) {
        showSnackbar(context, 'Filtered by: $order');
      },
    );
  }

  Widget _handleLoading() {
    return const ReposGrid(isLoading: true);
  }

  Widget _handleData(SearchUiState? state) {
    if (state == null || state.repos.isEmpty) {
      return const Center(child: Text("No repos found!"));
    }

    return ReposGrid(
      repos: state.repos,
      isLoadingMore: state.isLoadingMore,
      controller: _scrollController,
    );
  }

  Widget _handleError(Object error, StackTrace stackTrace) {
    Logger().e(
      "Error while searching repos: ",
      error: error,
      stackTrace: stackTrace,
    );
    return Center(child: Text('Error while searching repos.'));
  }
}
