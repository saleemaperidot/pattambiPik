import 'package:dartz/dartz.dart';
import 'package:pikit/application/user_registarion/bloc/registration_bloc.dart';
import 'package:pikit/domain/data/user/user_register/user_register.dart';

import '../../../failures/mainFailures.dart';

abstract class UserRepo {
  Future<Either<MainFailure, bool>> registeruser(UserRegister userData);
}
