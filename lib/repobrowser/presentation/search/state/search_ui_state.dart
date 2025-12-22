import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_repo_browser_flutter/repobrowser/domain/model/repo.dart';

part 'search_ui_state.freezed.dart';

@freezed
class SearchUiState with _$SearchUiState {
  const factory SearchUiState({
    @Default([]) List<Repo> repos,
    @Default(1) int page,
    @Default(false) bool isLoadingMore,
    @Default(true) bool hasMore,
    @Default('stars:>1000') String query,
  }) = _SearchUiState;
}