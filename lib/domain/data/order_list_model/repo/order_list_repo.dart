import 'package:dartz/dartz.dart';
import 'package:pikit/domain/data/order_list_model/order_list_model.dart';
import 'package:pikit/domain/data/order_list_model/order_request/order_request.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

abstract class OrderListRepo {
  Future<Either<MainFailure, List<OrderListModel>>> getAllOrderes({
    required OrderRequest orderRequest,
  });
}
