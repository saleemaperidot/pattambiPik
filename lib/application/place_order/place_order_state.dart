part of 'place_order_bloc.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState(
      {required int quantity,
      required String restrauntImage,
      required String restruntName,
      required String restrauntTime,
      required String restraunrDiscription,
      required String rating,
      required List<Order> order,
      required bool isLoding,
      required bool hasError}) = _Initial;
  factory PlaceOrderState.initial() => PlaceOrderState(
        quantity: 0,
        order: [],
        isLoding: false,
        hasError: false,
        restruntName: "",
        restraunrDiscription: "",
        rating: "",
        restrauntImage: "",
        restrauntTime: "",
      );
}
