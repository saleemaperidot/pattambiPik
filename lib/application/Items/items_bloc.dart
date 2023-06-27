import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/products/Model/item_model/item_model.dart';
import 'package:pikit/domain/data/products/Model/items/items.dart';
import 'package:pikit/domain/data/products/Model/parent/parent.dart';
import 'package:pikit/domain/data/products/repo/categoryRepo.dart';
import 'package:pikit/domain/data/products/repo/itemsRepo.dart';
import 'package:pikit/domain/data/products/repo/subcategoryCategoryService.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

part 'items_event.dart';
part 'items_state.dart';
part 'items_bloc.freezed.dart';

@injectable
class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final RestrauntItemServices restrauntItemServises;
  final RestrauntcategoryServices category;
  CategorySubCategoryServise categorysubcategory;

  ItemsBloc(this.restrauntItemServises, this.category, this.categorysubcategory)
      : super(ItemsState.initial()) {
    on<LoadRestrauntcategoryItems>((event, emit) async {
      emit(ItemsState(
          catrgorysubcategory: none,
          items: state.items,
          recomenteditems: [],
          isloading: true,
          hasError: false));

      final result = await category.getCategory(slug: event.slug);

      print("in bloc categories:$result");
      //print(result.tojson());
      final resultRec = await restrauntItemServises
          .getRestrauntRecomentedResponse(slug: event.slug);
      final _state = result.fold(
        (MainFailure f) {
          return ItemsState(
              catrgorysubcategory: none,
              recomenteditems: [],
              items: [],
              isloading: false,
              hasError: true);
        },
        (r) {
          return ItemsState(
            catrgorysubcategory: state.catrgorysubcategory,
            items: r,
            recomenteditems: state.recomenteditems,
            isloading: false,
            hasError: false,
          );
        },
      );
      emit(_state);
    });

    on<LoadRestrauntRecomentedItems>((event, emit) async {
      emit(ItemsState(
          catrgorysubcategory: none,
          items: state.items,
          recomenteditems: [],
          isloading: true,
          hasError: false));
      print("inside recomented");
      final result = await restrauntItemServises.getRestrauntRecomentedResponse(
          slug: event.slug);
      // final a = result as List;

      print("in bloc recomented:$result");
      //print(result.tojson());

      final _state = result.fold(
        (MainFailure f) {
          return ItemsState(
              catrgorysubcategory: none,
              recomenteditems: [],
              items: [],
              isloading: false,
              hasError: true);
        },
        (r) {
          return ItemsState(
            catrgorysubcategory: state.catrgorysubcategory,
            items: state.items,
            recomenteditems: r,
            isloading: false,
            hasError: false,
          );
        },
      );
      emit(_state);
    });

    // on<CategorySubCategoryItems>((event, emit) async {
    //   emit(const ItemsState(
    //       catrgorysubcategory: none,
    //       items: [],
    //       recomenteditems: [],
    //       isloading: true,
    //       hasError: false));

    //   final result = await category.getCategory(slug: event.slug);

    //   print("in bloc sub category categories:$result");
    //   //print(result.tojson());
    //   final resultRec = await categorysubcategory.getCategory(slug: event.slug);
    //   final _state = result.fold(
    //     (MainFailure f) {
    //       return const ItemsState(
    //           catrgorysubcategory: none,
    //           recomenteditems: [],
    //           items: [],
    //           isloading: false,
    //           hasError: true);
    //     },
    //     (r) {
    //       return ItemsState(
    //         catrgorysubcategory: r,
    //         items: state.items,
    //         recomenteditems: state.recomenteditems,
    //         isloading: false,
    //         hasError: false,
    //       );
    //     },
    //   );
    //   emit(_state);
    // });
  }
}
