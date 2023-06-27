import 'package:dartz/dartz.dart';
import 'package:pikit/domain/data/order_place/order_place.dart';

import 'package:pikit/domain/failures/mainFailures.dart';

abstract class PlaceOrderService {
  Future<Either<MainFailure, dynamic>> placeOrder(OrderPlace placeorderModel);
}
