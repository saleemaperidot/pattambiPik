import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/data/order_list_model/order_list_model.dart';
import 'package:pikit/domain/data/order_list_model/order_request/order_request.dart';
import 'package:pikit/domain/data/order_list_model/repo/order_list_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'my_order_event.dart';
part 'my_order_state.dart';
part 'my_order_bloc.freezed.dart';

@injectable
class MyOrderBloc extends Bloc<MyOrderEvent, MyOrderState> {
  final OrderListRepo orderListRepo;
  MyOrderBloc(this.orderListRepo) : super(MyOrderState.initial()) {
    on<GetMyOrderList>((event, emit) async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      final token = pref.getString("auth_token") ?? "";
      final userId = pref.getInt("user_id") ?? 0;
      final requestHeader = OrderRequest(token: token, userId: userId);
      final result =
          await orderListRepo.getAllOrderes(orderRequest: requestHeader);
      print("reeeeee$result");

      final state = result.fold((l) {
        return MyOrderState(orderList: [], isLoading: false, hasError: true);
      }, (r) {
        return MyOrderState(orderList: r, isLoading: false, hasError: false);
      });
      emit(state);
      // TODO: implement event handler
    });
  }
}
