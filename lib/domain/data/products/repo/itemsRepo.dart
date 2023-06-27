import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pikit/domain/data/products/Model/item_model/item_model.dart';
import 'package:pikit/domain/data/products/Model/parent/parent.dart';

import '../../../failures/mainFailures.dart';

abstract class RestrauntItemServices {
  Future<Either<MainFailure, List<ItemModel>>> getRestrauntRecomentedResponse(
      {required String? slug});
}
