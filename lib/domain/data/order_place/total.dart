import 'package:json_annotation/json_annotation.dart';

part 'total.g.dart';

@JsonSerializable()
class Total {
  int? productQuantity;
  int? totalPrice;

  Total({this.productQuantity, this.totalPrice});

  factory Total.fromJson(Map<String, dynamic> json) => _$TotalFromJson(json);

  Map<String, dynamic> toJson() => _$TotalToJson(this);
}
