// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchUiState {
  List<Repo> get repos => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUiStateCopyWith<SearchUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUiStateCopyWith<$Res> {
  factory $SearchUiStateCopyWith(
          SearchUiState value, $Res Function(SearchUiState) then) =
      _$SearchUiStateCopyWithImpl<$Res, SearchUiState>;
  @useResult
  $Res call(
      {List<Repo> repos,
      int page,
      bool isLoadingMore,
      bool hasMore,
      String query});
}

/// @nodoc
class _$SearchUiStateCopyWithImpl<$Res, $Val extends SearchUiState>
    implements $SearchUiStateCopyWith<$Res> {
  _$SearchUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
    Object? page = null,
    Object? isLoadingMore = null,
    Object? hasMore = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      repos: null == repos
          ? _value.repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchUiStateImplCopyWith<$Res>
    implements $SearchUiStateCopyWith<$Res> {
  factory _$$SearchUiStateImplCopyWith(
          _$SearchUiStateImpl value, $Res Function(_$SearchUiStateImpl) then) =
      __$$SearchUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Repo> repos,
      int page,
      bool isLoadingMore,
      bool hasMore,
      String query});
}

/// @nodoc
class __$$SearchUiStateImplCopyWithImpl<$Res>
    extends _$SearchUiStateCopyWithImpl<$Res, _$SearchUiStateImpl>
    implements _$$SearchUiStateImplCopyWith<$Res> {
  __$$SearchUiStateImplCopyWithImpl(
      _$SearchUiStateImpl _value, $Res Function(_$SearchUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repos = null,
    Object? page = null,
    Object? isLoadingMore = null,
    Object? hasMore = null,
    Object? query = null,
  }) {
    return _then(_$SearchUiStateImpl(
      repos: null == repos
          ? _value._repos
          : repos // ignore: cast_nullable_to_non_nullable
              as List<Repo>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchUiStateImpl implements _SearchUiState {
  const _$SearchUiStateImpl(
      {final List<Repo> repos = const [],
      this.page = 1,
      this.isLoadingMore = false,
      this.hasMore = true,
      this.query = 'stars:>1000'})
      : _repos = repos;

  final List<Repo> _repos;
  @override
  @JsonKey()
  List<Repo> get repos {
    if (_repos is EqualUnmodifiableListView) return _repos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repos);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final String query;

  @override
  String toString() {
    return 'SearchUiState(repos: $repos, page: $page, isLoadingMore: $isLoadingMore, hasMore: $hasMore, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchUiStateImpl &&
            const DeepCollectionEquality().equals(other._repos, _repos) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_repos),
      page,
      isLoadingMore,
      hasMore,
      query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchUiStateImplCopyWith<_$SearchUiStateImpl> get copyWith =>
      __$$SearchUiStateImplCopyWithImpl<_$SearchUiStateImpl>(this, _$identity);
}

abstract class _SearchUiState implements SearchUiState {
  const factory _SearchUiState(
      {final List<Repo> repos,
      final int page,
      final bool isLoadingMore,
      final bool hasMore,
      final String query}) = _$SearchUiStateImpl;

  @override
  List<Repo> get repos;
  @override
  int get page;
  @override
  bool get isLoadingMore;
  @override
  bool get hasMore;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$SearchUiStateImplCopyWith<_$SearchUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
