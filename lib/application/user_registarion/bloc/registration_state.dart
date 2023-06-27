part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState(
      {required bool userRegister,
      required bool isLoading,
      required bool haserror}) = _Initial;
  factory RegistrationState.initial() =>
      RegistrationState(userRegister: false, isLoading: false, haserror: false);
}
