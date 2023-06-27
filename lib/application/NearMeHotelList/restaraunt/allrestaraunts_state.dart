part of 'allrestaraunts_bloc.dart';

@freezed
class AllrestarauntsState with _$AllrestarauntsState {
  const factory AllrestarauntsState({
    required List<RestarauntsModel> restaurantList,
    required List<Restaurant> searchRestraunt,
    required bool isloading,
    required bool hasError,
  }) = _Initial;

  factory AllrestarauntsState.initial() => AllrestarauntsState(
      restaurantList: [],
      searchRestraunt: [],
      isloading: false,
      hasError: false);
}
