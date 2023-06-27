import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'proceed_to_checkout_model.g.dart';

@JsonSerializable()
class ProceedToCheckoutModel {
  bool? success;
  Data? data;

  ProceedToCheckoutModel({this.success, this.data});

  factory ProceedToCheckoutModel.fromJson(Map<String, dynamic> json) {
    return _$ProceedToCheckoutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProceedToCheckoutModelToJson(this);
}
