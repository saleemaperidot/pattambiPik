import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/apiEndPoints/test.dart';

import 'package:pikit/domain/data/promo_slider/Model/promoslider/promoslider.dart';
import 'package:pikit/domain/data/promo_slider/repo/promoSliderServices.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

@LazySingleton(as: PromoSliderServices)
class PromoSliderImplimentation implements PromoSliderServices {
  @override
  Future<Either<MainFailure, List<Promoslider>>>
      getPromoSlidersResponse() async {
    try {
      final response = await Dio(BaseOptions()).post(
          Apis.API_URL + Apis.PROMO_SLIDER,
          queryParameters: TestValues().jsonBody);
      //  print(response.data);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final slider = response.data == null
            ? <Promoslider>[]
            : (response.data['mainSlides'] as List)
                .map((e) => Promoslider.fromJson(e))
                .toList();
        //final List<downloadModel> downloadImageList = [];
        //log(response.data.toString());
        return Right(slider);
      } else {
        return const Left(MainFailure.ServerFailure());
      }
    } catch (e) {
      // log(e.toString());
      return const Left(MainFailure.ClientFailure());
    }
  }
}
