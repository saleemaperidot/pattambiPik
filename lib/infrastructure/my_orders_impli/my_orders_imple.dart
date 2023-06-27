import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/application/proceedToCheckOut/proceed_to_checkout_bloc.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/order_list_model/order_request/order_request.dart';
import 'package:pikit/domain/data/order_list_model/order_list_model.dart';
import 'package:pikit/domain/data/order_list_model/repo/order_list_repo.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

@LazySingleton(as: OrderListRepo)
class MyOrdersImplements implements OrderListRepo {
  @override
  Future<Either<MainFailure, List<OrderListModel>>> getAllOrderes(
      {required OrderRequest orderRequest}) async {
    // TODO: implement getAllOrderes
    try {
      final response = await Dio(BaseOptions())
          .post(Apis.API_URL + Apis.MYORDERS, data: orderRequest.toJson());
      print("rrrrrrrrrr${response.data}");
      final responsedata = response.data;
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<OrderListModel> list = (responsedata as List)
            .map((e) => OrderListModel.fromJson(e))
            .toList();
        //  final listOfMyOrders = OrderListModel.fromJson(response.data);
        return Right(list);
      } else {
        return Left(MainFailure.ServerFailure());
      }
    } catch (_) {
      return Left(MainFailure.ClientFailure());
    }
  }
}
