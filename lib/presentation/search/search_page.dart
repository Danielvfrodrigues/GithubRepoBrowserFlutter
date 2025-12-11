import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_repo_browser_flutter/core/ui/widgets/custom_snack_bar.dart';
import 'package:github_repo_browser_flutter/presentation/di/presentation_module.dart';
import 'package:github_repo_browser_flutter/presentation/search/widgets/bottomsheet/show_sort_bottom_sheet.dart';
import 'package:github_repo_browser_flutter/presentation/search/widgets/repos_grid.dart';
import 'package:github_repo_browser_flutter/presentation/search/widgets/search_bar.dart';
import 'package:logger/logger.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reposState = ref.watch(searchControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Github Repositories'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              showSortBottomSheet(
                  context: context,
                  selected: ref
                      .read(searchControllerProvider.notifier)
                      .sortOrder,
                  onSelected: (order) {
                    showSnackbar(context, 'Filtered by: $order');
                    /*
                  * TODO sort in database
                  *  ref.read(searchControllerProvider.notifier).setSortOrder(order);
                  */
                  }
              );
            },
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
        child: Column(
          children: [
            RepoSearchBar(
              onChanged: (query) =>
                  ref.read(searchControllerProvider.notifier).search(query),
              onClear: () =>
                  ref.read(searchControllerProvider.notifier).search(null),
            ),

            const SizedBox(height: 12),

            Expanded(
              child: reposState.when(
                data: (repos) =>
                repos.isEmpty
                    ? Center(child: Text("No repos found!"))
                    : ReposGrid(repos: repos),
                loading: () => ReposGrid(isLoading: true),
                error: (err, st) => _handleError(err, st),
              ),
            ),
          ],
        ),
      ),
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
