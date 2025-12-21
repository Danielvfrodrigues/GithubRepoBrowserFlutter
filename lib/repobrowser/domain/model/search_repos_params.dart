class SearchReposParams {
  final String query;
  final int page;
  final int perPage;

  const SearchReposParams({
    required this.query,
    this.page = 1,
    this.perPage = 20,
  });
}