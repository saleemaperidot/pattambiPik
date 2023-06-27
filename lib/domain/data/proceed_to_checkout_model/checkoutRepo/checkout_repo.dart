import 'package:dartz/dartz.dart' hide Order;
import 'package:pikit/domain/data/order_place/location.dart';
import 'package:pikit/domain/data/order_place/order.dart';
import 'package:pikit/domain/data/order_place/total.dart';

import 'package:pikit/domain/data/proceed_to_checkout_model/proceed_to_checkout_model.dart';

import 'package:pikit/domain/failures/mainFailures.dart';

abstract class CheckOutRepo {
  Future<Either<MainFailure, dynamic>> checkOut(
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
      required dynamic tipAmount});
}
