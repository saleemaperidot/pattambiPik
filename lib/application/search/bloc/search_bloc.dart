import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/products/search_model/restaurant.dart';
import 'package:pikit/domain/data/products/search_model/search_model.dart';
import 'package:pikit/domain/data/search/search_repo/search_repo.dart';

import '../../../domain/data/products/search_model/item.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final searchServises searchServices;

  SearchBloc(this.searchServices) : super(SearchState.initial()) {
    on<LoadSearchResults>((event, emit) async {
      emit(const SearchState(
          restraunts: [], item: [], isLoading: true, hasError: false));

      final serachResult =
          await searchServices.getAllRestaurants(searchQuery: event.query);
      log("serachResult$serachResult");
      final _state = serachResult.fold((l) {
        return const SearchState(
            restraunts: [], item: [], isLoading: false, hasError: true);
      }, (SearchModel result) {
        return SearchState(
            restraunts: result.restaurants!,
            item: result.items!,
            isLoading: false,
            hasError: false);
      });
      emit(_state);
    });
  }
}
