import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/products/search_model/item.dart';
import 'package:pikit/domain/data/products/search_model/restaurant.dart';
import 'package:pikit/domain/data/restrauntsitems/ReastaurantsRep/RestaurantsService.dart';
import 'package:pikit/domain/data/restrauntsitems/restaraunts_model/restaraunts_model.dart';
import 'package:pikit/domain/data/search/search_repo/search_repo.dart';

import '../../../domain/data/products/search_model/search_model.dart';

part 'allrestaraunts_event.dart';
part 'allrestaraunts_state.dart';
part 'allrestaraunts_bloc.freezed.dart';

@injectable
class AllrestarauntsBloc
    extends Bloc<AllrestarauntsEvent, AllrestarauntsState> {
  final RestrauntsServises restaurantsServices;
  final searchServises searchServices;
  AllrestarauntsBloc(this.restaurantsServices, this.searchServices)
      : super(AllrestarauntsState.initial()) {
    on<FilterRestraunts>(
      (event, emit) async {
        emit(AllrestarauntsState(
            restaurantList: state.restaurantList,
            searchRestraunt: [],
            isloading: true,
            hasError: false));

        final serachResult =
            await searchServices.getAllRestaurants(searchQuery: event.query);
        log("serachResult$serachResult");
        final _state = serachResult.fold((l) {
          return AllrestarauntsState(
              restaurantList: [],
              searchRestraunt: [],
              isloading: false,
              hasError: true);
        }, (SearchModel result) {
          return AllrestarauntsState(
              restaurantList: state.restaurantList,
              searchRestraunt: result.restaurants!,
              isloading: false,
              hasError: false);
        });
        emit(_state);
      },
    );

    on<LoadRestaraunts>((event, emit) async {
      emit(AllrestarauntsState(
          restaurantList: [],
          searchRestraunt: [],
          isloading: true,
          hasError: false));

      final result = await restaurantsServices.getAllRestaurants();
      print("result in bloc");

      print("error$result");
      final _state = result.fold((l) {
        return AllrestarauntsState(
            restaurantList: [],
            searchRestraunt: [],
            isloading: false,
            hasError: true);
      }, (r) {
        return AllrestarauntsState(
            restaurantList: r,
            searchRestraunt: [],
            isloading: false,
            hasError: false);
      });
      emit(_state);
      // TODO: implement event handler
    });
  }
}
