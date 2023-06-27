part of 'proceed_to_checkout_bloc.dart';

@freezed
class ProceedToCheckoutState with _$ProceedToCheckoutState {
  const factory ProceedToCheckoutState(
      {required dynamic proceedToCheckoutModel,
      required bool isLoading,
      required bool hasError}) = _Initial;
  factory ProceedToCheckoutState.initial() => ProceedToCheckoutState(
      proceedToCheckoutModel: null, isLoading: false, hasError: false);
}
