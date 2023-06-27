import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pikit/domain/apiEndPoints/apis.dart';
import 'package:pikit/domain/data/order_place/order_place.dart';
//import 'package:pikit/domain/data/placeorder_model/placeorder_model.dart';
import 'package:dartz/dartz.dart';
import 'package:pikit/domain/data/placeorder_model/repo/place_order_repo.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

@LazySingleton(as: PlaceOrderService)
class PlaceOrderImplementation implements PlaceOrderService {
  @override
  Future<Either<MainFailure, dynamic>> placeOrder(
      OrderPlace placeorderModel) async {
    // TODO: implement placeOrder
    try {
      final respose = await Dio(BaseOptions())
          .post(Apis.PLACE_ORDER, data: placeorderModel);

      return Right(respose.data);
    } catch (e) {
      return const Left(MainFailure.ClientFailure());
    }
  }
}
