import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/products/Model/item_model/item_model.dart';
import 'package:pikit/domain/data/products/Model/items/item_demo.dart';
import 'package:pikit/domain/data/products/Model/items/items.dart';
import 'package:pikit/domain/data/products/repo/categoryRepo.dart';

import '../../domain/failures/mainFailures.dart';

@LazySingleton(as: RestrauntcategoryServices)
class RestrauntItemImplimentation implements RestrauntcategoryServices {
  @override
  Future<Either<MainFailure, List<dynamic>>> getCategory(
      {required String? slug}) async {
    try {
      final response = await Dio(BaseOptions()).post(
        Apis.API_URL + Apis.ITEMS + slug!,
      );
      //  Map<String,dynamic>
      // p.add(value);
      // List<List<ItemModel>> products = [];
      List<ItemModel> products = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        final items = response.data["items"];

        // Items product = Items.fromJson(items);

        //   final itemlist = (items as List).map((e) => Items.fromJson(e)).toList();
        print("\n \n \n \n \n \n \n \n \n itemsfull   $items \n \n");

        final recomented = response.data["recommended"];
        print("recomented---$recomented");
        List<dynamic> products = [];
        items.forEach((key, value) {
          print("values for each:$value");
          products.add(value);
          //   value.forEach((e) {
          //     ItemModel items = ItemModel.fromJson(e);

          //     // List<ItemModel> item = [];
          //     // item.add(items);
          //     // products.add(item);
          //     products.add(items);
          //   });
        });
        print("---$products");
        //print("List of valuess......$a");
        // final categories = items.item;
        // print("items.item $categories");
        // print("a");
        // final rec = Parent.fromJson(response.data);
        // final item =
        //     (items as List).map((e) => ItemDemo.fromJson(items)).toList();
        // print("items.item $item");
        // final rec = ItemModel.fromJson(e)
        return Right(products);

        // return Right(itemlist);
      } else {
        return const Left(MainFailure.ServerFailure());
      }
    } catch (e) {
      print(e);
      return const Left(MainFailure.ClientFailure());
    }
  }
}
