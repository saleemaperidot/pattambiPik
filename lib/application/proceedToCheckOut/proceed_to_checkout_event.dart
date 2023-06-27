part of 'proceed_to_checkout_bloc.dart';

@freezed
class ProceedToCheckoutEvent with _$ProceedToCheckoutEvent {
  const factory ProceedToCheckoutEvent.checkOut(
      {required List<Order> order,
      required dynamic coupon,
      required Location location,
      required dynamic orderComment,
      required Total total,
      required String methord,
      required String paymentTocken,
      required int deliveryType,
      required bool partialwallet,
      required int dis,
      required bool pendingPayment,
      required dynamic tipAmount}) = CheckOut;
  const factory ProceedToCheckoutEvent.myOrdersResult() = myOrdersResult;
}
