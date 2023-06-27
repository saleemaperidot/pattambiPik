import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/user/userRepo/user_repo.dart';
import 'package:pikit/domain/failures/mainFailures.dart';
import 'package:pikit/domain/data/user/user_register/user_register.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: UserRepo)
class UserRegisterImplimentation implements UserRepo {
  @override
  Future<Either<MainFailure, bool>> registeruser(UserRegister userData) async {
    try {
      final respose = await Dio(BaseOptions())
          .post(Apis.API_URL + Apis.REGISTER_USER, data: userData.toJson());
      log("reponse${respose}");
      final original = respose.data["success"];
      print("original$original");
      // final success = original["success"];
      // print("sucess$success");
      //   final auth_token = respose.data["auth_token"];
      //  print("auth$auth_token");
      //SharedPreferences pref = await SharedPreferences.getInstance();
      //pref.setString("auth_token", auth_token);
      //pref.setBool("is_login", false);
      if (respose.statusCode == 200 || respose.statusCode == 201) {
        return Right(original);
      } else {
        return Left(MainFailure.ServerFailure());
      }
    } catch (_) {
      return Left(MainFailure.ClientFailure());
    }
  }
}
