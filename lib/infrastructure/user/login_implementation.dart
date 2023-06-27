import 'dart:developer';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/user/login/loginrepo.dart';
import 'package:pikit/domain/data/user/login_model/login_model.dart';
import 'package:pikit/domain/data/user/login_response_model/login_response_model.dart';
import 'package:pikit/presentation/Login/Login.dart';
import 'package:pikit/domain/failures/mainFailures.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: LoginRepo)
class LoginImplimentation implements LoginRepo {
  @override
  Future<Either<MainFailure, dynamic>> login(LoginModel logindata) async {
    try {
      log("====logindata${logindata.toString()}");
      final response = await Dio(BaseOptions())
          .post(Apis.API_URL + Apis.LOGIN, data: logindata.toJson());

      log("login response$response");
      if (response.statusCode == 200 || response.statusCode == 201) {
        final loginresponsedata = LoginResponseModel.fromJson(response.data);
        final userdata = loginresponsedata.data;
        print("userdata$userdata");

        final running_order = loginresponsedata.runningOrder;
        if (userdata != null) {
          final authToken = userdata.authToken;
          print("authToken$authToken");
          final userid = userdata.id;
          final email = userdata.email;
          final name = userdata.name;
          final phone = userdata.phone;
          final address = userdata.defaultAddress;

          final addressid = userdata.defaultAddressId;
          final wallet_balance = userdata.walletBalance;
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setString("auth_token", authToken ?? "");
          pref.setInt("user_id", userid ?? 0);
          pref.setString("email", email ?? "");
          pref.setString("name", name ?? "");
          pref.setString("phone", phone ?? "");
          // pref.noSuchMethod(invocation);
          //  pref.setString("address", address);
          pref.setInt("addressid", addressid ?? 0);
          pref.setInt("wallet_balance", wallet_balance ?? 0);
        }
        // LoginResponseModel.fromJson(response);

        return right(response.data);
      } else {
        return Left(MainFailure.ServerFailure());
      }
    } catch (e) {
      log(e.toString());
      return Left(MainFailure.ClientFailure());
    }
  }
}
