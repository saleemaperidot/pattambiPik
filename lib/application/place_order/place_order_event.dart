part of 'place_order_bloc.dart';

@freezed
class PlaceOrderEvent with _$PlaceOrderEvent {
  const factory PlaceOrderEvent.initialized() = Initialized;
  const factory PlaceOrderEvent.getCartItems() = GetCartItems;
  const factory PlaceOrderEvent.checkOut(
      {required List<Order> order,
      required dynamic coupon,
      required Location location,
      required String orderComment,
      required Total total,
      required String methord,
      required String paymentTocken,
      required int deliveryType,
      required bool partialwallet,
      required int dis,
      required bool pendingPayment,
      required dynamic tipAmount}) = CheckOut;
  const factory PlaceOrderEvent.orderItem(
      {required List<Order> order,
      required String restrauntImage,
      required String restrauntname,
      required String restrauntRating,
      required String time,
      required String restrauntDescription}) = OrderItem;
  const factory PlaceOrderEvent.removeItem({required List<Order> order}) =
      RemoveItem;
}
