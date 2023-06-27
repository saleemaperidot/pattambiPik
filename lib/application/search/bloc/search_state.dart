part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState(
      {required List<Restaurant> restraunts,
      required List<Item> item,
      required bool isLoading,
      required bool hasError}) = _Initial;

  factory SearchState.initial() => const SearchState(
      restraunts: [], item: [], isLoading: false, hasError: false);
}
