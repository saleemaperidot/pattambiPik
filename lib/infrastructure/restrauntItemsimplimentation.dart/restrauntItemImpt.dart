import 'dart:math';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/products/Model/items/item_demo.dart';
import 'package:pikit/domain/data/products/Model/parent/parent.dart';
//import 'package:pikit/domain/data/products/Model/recomented/productdemo.dart';

import 'package:pikit/domain/failures/mainFailures.dart';

import 'package:pikit/domain/data/products/Model/item_model/item_model.dart';

import 'package:dartz/dartz.dart';

import '../../domain/apiEndPoints/apis.dart';
import '../../domain/data/products/repo/itemsRepo.dart';

@LazySingleton(as: RestrauntItemServices)
class RestrauntItemImplimentation implements RestrauntItemServices {
  @override
  Future<Either<MainFailure, List<ItemModel>>> getRestrauntRecomentedResponse(
      {required String? slug}) async {
    try {
      final response = await Dio(BaseOptions()).post(
        Apis.API_URL + Apis.ITEMS + slug!,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final items = response.data["items"];
        final recomented = response.data["recommended"];
        items.forEach((key, value) {});
        // print("a");
        // final rec = Parent.fromJson(response.data);
        final rec =
            (recomented as List).map((e) => ItemModel.fromJson(e)).toList();
        print("recomented implimentation $rec");
        return Right(rec);
      } else {
        return const Left(MainFailure.ServerFailure());
      }
    } catch (_) {
      return const Left(MainFailure.ClientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<ItemModel>>> getRestrauntCategoryResponse(
      {required String? slug}) async {
    var rec;
    // TODO: implement getRestrauntCategoryResponse
    try {
      final response = await Dio(BaseOptions()).post(
        Apis.API_URL + Apis.ITEMS + slug!,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final items = response.data["items"];

        print("get restraunt category item $items");
        final responseResult = ItemDemo.fromJson(items);
        // final recueeee = ;
        //final recomented = response.data["recommended"];
        items.forEach((key, value) {
          rec = (value as List).map((e) => ItemModel.fromJson(e)).toList();
        });
        // print("a $recueeee");

        // final rec = (items as List).map((e) => ItemModel.fromJson(e)).toList();

        return Right(rec);
      } else {
        return const Left(MainFailure.ServerFailure());
      }
    } catch (_) {
      log(e);
      return const Left(MainFailure.ClientFailure());
    }
  }
}
