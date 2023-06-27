import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/user/login/loginrepo.dart';
import 'package:pikit/domain/data/user/login_model/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepo loginrepo;
  LoginBloc(this.loginrepo) : super(LoginState.initial()) {
    on<LoginSuccess>((event, emit) async {
      emit(LoginState(
          successIndicator: false, isLoading: false, hasError: false));

      final result = await loginrepo.login(event.loginModel);
      log("Loginresult$result");
      final _state = result.fold((l) {
        emit(LoginState(
            successIndicator: false, isLoading: false, hasError: true));
      }, (r) {
        emit(
            LoginState(successIndicator: r, isLoading: false, hasError: false));
      });
      return _state;
    });
  }
}
