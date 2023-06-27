import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:pikit/domain/data/promo_slider/Model/promoslider/promoslider.dart';
import 'package:pikit/domain/data/promo_slider/repo/promoSliderServices.dart';

part 'promoslider_event.dart';
part 'promoslider_state.dart';
part 'promoslider_bloc.freezed.dart';

@injectable
class PromosliderBloc extends Bloc<PromosliderEvent, PromosliderState> {
  final PromoSliderServices promoSliderServices;
  PromosliderBloc(this.promoSliderServices)
      : super(PromosliderState.initial()) {
    on<LoadPromoslider>((event, emit) async {
      // print("On Load promo slider called");
      emit(const PromosliderState(
          promoSlide: [], isloading: true, hasError: false));

      final result = await promoSliderServices.getPromoSlidersResponse();
      //  print("result in bloc");

      // print(result);
      final _state = result.fold((l) {
        return const PromosliderState(
            promoSlide: [], isloading: false, hasError: true);
      }, (r) {
        return PromosliderState(
            promoSlide: r, isloading: false, hasError: false);
      });
      emit(_state);
      // TODO: implement event handler
    });
  }
}
