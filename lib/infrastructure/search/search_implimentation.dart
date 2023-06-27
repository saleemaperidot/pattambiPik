import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/apiEndPoints/test.dart';
import 'package:pikit/domain/data/products/search_model/search_model.dart';
import 'package:dartz/dartz.dart';
import 'package:pikit/domain/data/search/search_repo/search_repo.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

@LazySingleton(as: searchServises)
class SearchImplementation implements searchServises {
  @override
  Future<Either<MainFailure, SearchModel>> getAllRestaurants(
      {required String searchQuery}) async {
    try {
      print("inside try search");
      // TestValues().jsonBody.update("q", (value) => "nak");
      TestValues().jsonBodyforSearch.addAll({"q": searchQuery});
      log("test${TestValues().jsonBodyforSearch}");
      final response = await Dio(BaseOptions())
          .post(Apis.API_URL + Apis.SEARCH, queryParameters: {
        "latitude": "10.865022407852523",
        "longitude": "76.18432147772106",
        "q": searchQuery
      });
      log("res---search${response}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchResult = SearchModel.fromJson(response.data);
        return Right(searchResult);
      } else {
        return Left(MainFailure.ServerFailure());
      }
    } catch (_) {
      return Left(MainFailure.ClientFailure());
    }
  }
}
