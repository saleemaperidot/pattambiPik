import 'package:dartz/dartz.dart';
import 'package:pikit/domain/data/user/login_model/login_model.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

import '../../../../presentation/Login/Login.dart';

abstract class LoginRepo {
  Future<Either<MainFailure, dynamic>> login(LoginModel logindata);
}
