import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/order_place/default_address.dart';
import 'package:pikit/domain/data/order_place/location.dart';
import 'package:pikit/domain/data/order_place/order.dart';
import 'package:pikit/domain/data/order_place/order_place.dart';
import 'package:pikit/domain/data/order_place/total.dart';
import 'package:pikit/domain/data/order_place/user.dart';

//import 'package:pikit/domain/data/user/login_response_model/data.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

import 'package:pikit/domain/data/proceed_to_checkout_model/proceed_to_checkout_model.dart';

import 'package:dartz/dartz.dart' hide Order;
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/data/order_place/data.dart';
import '../../domain/data/proceed_to_checkout_model/checkoutRepo/checkout_repo.dart';

@LazySingleton(as: CheckOutRepo)
class CheckOutImplimentation implements CheckOutRepo {
  @override
  Future<Either<MainFailure, dynamic>> checkOut(
      {required List<Order> order,
      required coupon,
      required Location location,
      required String orderComment,
      required Total total,
      required String methord,
      required String paymentTocken,
      required int deliveryType,
      required bool partialwallet,
      required int dis,
      required bool pendingPayment,
      required tipAmount}) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    final String token = pref.getString("auth_token") ?? "";
    final String email = pref.getString("email") ?? "";
    final String name = pref.getString("name") ?? "";
    final String phone = pref.getString("phone") ?? "";
    final int id = pref.getInt("user_id") ?? 0;
    final user = Data(
      authToken: token,
      defaultAddressId: 59825,
      deliveryPin: "",
      email: email,
      id: id,
      name: name,
      phone: phone,
      walletBalance: 0,
    );
    print(user.toJson());
    final checkOutRequest = OrderPlace(
        token: token,
        user: User(data: user),
        order: order,
        coupon: null,
        location: location,
        orderComment: null,
        total: total,
        method: "COD",
        paymentToken: null,
        deliveryType: 1,
        partialWallet: false,
        dis: 0,
        pendingPayment: false,
        tipAmount: null);

    print("checkout request${checkOutRequest.toJson()}");
    print("order 0000${order.toString()}");
    try {
      final response = await Dio(BaseOptions())
          .post(Apis.PLACE_ORDER, data: checkOutRequest.toJson());
      print(response);
      final success = ProceedToCheckoutModel.fromJson(response.data);
      //  response.data;
      print(response);

      if (response.statusCode == 200 || response.statusCode == 201) {
        print(success);
        return Right(response.data);
      } else {
        return Left(MainFailure.ServerFailure());
      }
    } on DioError catch (e) {
      // log(e.toString());
      return Left(MainFailure.ClientFailure());
    }
  }
}
