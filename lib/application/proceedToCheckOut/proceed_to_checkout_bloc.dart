import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/order_place/location.dart';
import 'package:pikit/domain/data/order_place/order.dart';
import 'package:pikit/domain/data/order_place/total.dart';

import 'package:pikit/domain/data/proceed_to_checkout_model/proceed_to_checkout_model.dart';

import '../../domain/data/proceed_to_checkout_model/checkoutRepo/checkout_repo.dart';

part 'proceed_to_checkout_event.dart';
part 'proceed_to_checkout_state.dart';
part 'proceed_to_checkout_bloc.freezed.dart';

@injectable
class ProceedToCheckoutBloc
    extends Bloc<ProceedToCheckoutEvent, ProceedToCheckoutState> {
  CheckOutRepo repo;
  ProceedToCheckoutBloc(this.repo) : super(ProceedToCheckoutState.initial()) {
    on<CheckOut>((event, emit) async {
      final result = await repo.checkOut(
          order: event.order,
          coupon: event.coupon,
          location: event.location,
          orderComment: event.orderComment,
          total: event.total,
          methord: event.methord,
          paymentTocken: event.paymentTocken,
          deliveryType: event.deliveryType,
          partialwallet: event.partialwallet,
          dis: event.dis,
          pendingPayment: event.pendingPayment,
          tipAmount: event.tipAmount);
      print(result.toString());
      final state = result.fold(
        (l) {
          return ProceedToCheckoutState(
              proceedToCheckoutModel: [], isLoading: false, hasError: true);
        },
        (r) {
          return ProceedToCheckoutState(
              proceedToCheckoutModel: r, hasError: false, isLoading: false);
        },
      );
      log(state.toString());
      print("result prodeed to checkout$result");
      emit(state);
    });
    on<myOrdersResult>((event, emit) async {
      emit(ProceedToCheckoutState(
          proceedToCheckoutModel: state.proceedToCheckoutModel,
          isLoading: false,
          hasError: true));
    });
  }
}
