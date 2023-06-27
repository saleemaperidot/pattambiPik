import 'package:dartz/dartz.dart';

import '../../../failures/mainFailures.dart';
import '../../products/search_model/search_model.dart';

abstract class searchServises {
  Future<Either<MainFailure, SearchModel>> getAllRestaurants(
      {required String searchQuery});
}
