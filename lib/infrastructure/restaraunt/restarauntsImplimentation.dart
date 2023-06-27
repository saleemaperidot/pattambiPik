import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/apiEndPoints/test.dart';
import 'package:pikit/domain/data/restrauntsitems/ReastaurantsRep/RestaurantsService.dart';
import 'package:pikit/domain/data/restrauntsitems/restaraunts_model/restaraunts_model.dart';

import 'package:pikit/domain/failures/mainFailures.dart';

@LazySingleton(as: RestrauntsServises)
class RestaurantImplimentation implements RestrauntsServises {
  @override
  Future<Either<MainFailure, List<RestarauntsModel>>>
      getAllRestaurants() async {
    try {
      final response = await Dio(BaseOptions()).post(Apis.API_URL + Apis.SHOP,
          queryParameters: TestValues().jsonBody);
      print(response.data.toString());
      //  return right(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final restrauntsResult = (response.data as List)
            .map((e) => RestarauntsModel.fromJson(e))
            .toList();
        print("restraunt result$restrauntsResult");
        //final List<downloadModel> downloadImageList = [];
        // log(response.data.toString());

        return Right(restrauntsResult);
      } else {
        return const Left(MainFailure.ServerFailure());
      }
    } catch (_) {
      return const Left(MainFailure.ClientFailure());
    }
  }
}
