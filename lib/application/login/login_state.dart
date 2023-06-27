part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required dynamic successIndicator,
    required bool isLoading,
    required bool hasError,
  }) = _Initial;
  factory LoginState.initial() => const LoginState(
      successIndicator: false, isLoading: false, hasError: false);
}
