part of 'promoslider_bloc.dart';

@freezed
class PromosliderState with _$PromosliderState {
  const factory PromosliderState({
    required List<Promoslider> promoSlide,
    required bool isloading,
    required bool hasError,
  }) = _Initial;

  factory PromosliderState.initial() =>
      const PromosliderState(promoSlide: [], isloading: false, hasError: false);
}
