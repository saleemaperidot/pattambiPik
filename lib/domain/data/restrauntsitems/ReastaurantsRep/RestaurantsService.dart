import 'package:dartz/dartz.dart';
import 'package:pikit/domain/data/restrauntsitems/restaraunts_model/restaraunts_model.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

abstract class RestrauntsServises {
  Future<Either<MainFailure, List<RestarauntsModel>>> getAllRestaurants();
}
