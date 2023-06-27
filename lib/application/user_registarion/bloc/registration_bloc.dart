import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/user/userRepo/user_repo.dart';
import 'package:pikit/domain/data/user/user_register/user_register.dart';

part 'registration_event.dart';
part 'registration_state.dart';
part 'registration_bloc.freezed.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  UserRepo userrepo;
  RegistrationBloc(this.userrepo) : super(RegistrationState.initial()) {
    on<Registeruser>((event, emit) async {
      emit(RegistrationState(
          userRegister: false, isLoading: true, haserror: false));

      final result = await userrepo.registeruser(event.userregisterdata);

      log("!!!!!$result");
      result.fold((l) {
        emit(RegistrationState(
            userRegister: false, isLoading: false, haserror: true));
      }, (r) {
        emit(RegistrationState(
            userRegister: r, isLoading: false, haserror: false));
      });
    });
  }
}
