import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/order_place/location.dart';
import 'package:pikit/domain/data/order_place/order.dart';
import 'package:pikit/domain/data/order_place/total.dart';

import 'package:pikit/domain/data/placeorder_model/repo/place_order_repo.dart';

part 'place_order_event.dart';
part 'place_order_state.dart';
part 'place_order_bloc.freezed.dart';

@injectable
class PlaceOrderBloc extends Bloc<PlaceOrderEvent, PlaceOrderState> {
  PlaceOrderService service;
  List<Order> orders = [];
  PlaceOrderBloc(this.service) : super(PlaceOrderState.initial()) {
    on<OrderItem>((event, emit) async {
      print("place order bloc${event.order}");

      //  orders.add(event.order);
//equitable
      emit(PlaceOrderState(
          rating: event.restrauntRating,
          restraunrDiscription: event.restrauntDescription,
          restrauntImage: event.restrauntImage,
          restrauntTime: event.time,
          restruntName: event.restrauntname,
          quantity: state.quantity + 1,
          order: event.order,
          isLoding: false,
          hasError: false));
    });
    on<RemoveItem>((event, emit) async {
      emit(PlaceOrderState(
        quantity: state.quantity == 0 ? 0 : state.quantity - 1,
        order: event.order,
        isLoding: false,
        hasError: false,
        rating: state.rating,
        restraunrDiscription: state.restraunrDiscription,
        restrauntImage: state.restrauntImage,
        restrauntTime: state.restrauntTime,
        restruntName: state.restruntName,
      ));
    });
    on<Initialized>((event, emit) async {
      emit(PlaceOrderState(
          quantity: 0,
          order: [],
          isLoding: false,
          hasError: false,
          rating: "",
          restraunrDiscription: "",
          restrauntImage: "",
          restrauntTime: "",
          restruntName: ""));
    });
    on<GetCartItems>((event, emit) async {
      emit(PlaceOrderState(
        rating: state.rating,
        restraunrDiscription: state.restraunrDiscription,
        restrauntImage: state.restrauntImage,
        restrauntTime: state.restrauntTime,
        restruntName: state.restruntName,
        quantity: state.quantity,
        order: state.order,
        isLoding: false,
        hasError: false,
      ));
    });
  }
}
