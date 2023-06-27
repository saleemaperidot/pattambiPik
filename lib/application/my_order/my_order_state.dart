part of 'my_order_bloc.dart';

@freezed
class MyOrderState with _$MyOrderState {
  const factory MyOrderState(
      {required List<OrderListModel> orderList,
      required bool isLoading,
      required bool hasError}) = _Initial;

  factory MyOrderState.initial() =>
      const MyOrderState(orderList: [], isLoading: false, hasError: false);
}
