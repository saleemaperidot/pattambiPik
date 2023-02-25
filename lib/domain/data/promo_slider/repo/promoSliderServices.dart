import 'package:dartz/dartz.dart';

import 'package:pikit/domain/data/promo_slider/Model/promoslider/promoslider.dart';
import 'package:pikit/domain/failures/mainFailures.dart';

abstract class PromoSliderServices {
  Future<Either<MainFailure, List<Promoslider>>> getPromoSlidersResponse();
}
