part of 'items_bloc.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState({
    required List<ItemModel> recomenteditems,
    required List<dynamic> items,
    required dynamic catrgorysubcategory,
    required bool isloading,
    required bool hasError,
  }) = _Initial;
  factory ItemsState.initial() => const ItemsState(
      catrgorysubcategory: none,
      recomenteditems: [],
      items: [],
      isloading: false,
      hasError: false);
}
