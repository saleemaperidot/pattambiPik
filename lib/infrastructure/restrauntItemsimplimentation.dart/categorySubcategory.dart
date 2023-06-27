import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/products/Model/item_model/item_model.dart';
import 'package:pikit/domain/data/products/Model/items/item_demo.dart';
import 'package:pikit/domain/data/products/repo/categoryRepo.dart';
import 'package:pikit/domain/data/products/repo/subcategoryCategoryService.dart';

import '../../domain/failures/mainFailures.dart';

@LazySingleton(as: CategorySubCategoryServise)
class CategorySubCategory implements CategorySubCategoryServise {
  @override
  Future<Either<MainFailure, dynamic>> getCategory(
      {required String? slug}) async {
    try {
      final response = await Dio(BaseOptions()).post(
        Apis.API_URL + Apis.ITEMS + slug!,
      );
      //  Map<String,dynamic>
      // p.add(value);
      List<ItemModel> products = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        final items = response.data["items"];
        final itemcategorySub = ItemDemo.fromJson(items);
        // final recomented = response.data["recommended"];
        // items.forEach((key, value) {
        //   //   print("values :$value");
        //   value.forEach((e) {
        //     ItemModel item = ItemModel.fromJson(e);
        //     products.add(item);
        //   });
        //});
        // print("items from value e $products");
        //print("List of valuess......$a");
        // final categories = items.item;
        // print("items.item $categories");
        // print("a");
        // final rec = Parent.fromJson(response.data);
        // final item =
        //     (items as List).map((e) => ItemDemo.fromJson(items)).toList();
        // print("items.item $item");
        // final rec = ItemModel.fromJson(e)
        print("itemcategorysub..\n\n\n\n");
        print(" $itemcategorySub");

        return Right(itemcategorySub);
      } else {
        return const Left(MainFailure.ServerFailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailure.ClientFailure());
    }
  }
}
