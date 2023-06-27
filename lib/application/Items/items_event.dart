part of 'items_bloc.dart';

@freezed
class ItemsEvent with _$ItemsEvent {
  const factory ItemsEvent.loadRestrauntRecomentedItems({
    required String slug,
  }) = LoadRestrauntRecomentedItems;
  const factory ItemsEvent.loadRestrauntcategoryItems({
    required String slug,
  }) = LoadRestrauntcategoryItems;

  // const factory ItemsEvent.categorySubCategoryItems({
  //   required String slug,
  // }) = CategorySubCategoryItems;
}
