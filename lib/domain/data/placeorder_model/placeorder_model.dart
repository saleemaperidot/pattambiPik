import 'package:json_annotation/json_annotation.dart';
import 'package:pikit/domain/data/user/login_response_model/data.dart';

import 'location.dart';
import 'order.dart';
import 'total.dart';

part 'placeorder_model.g.dart';

@JsonSerializable()
class PlaceorderModel {
  String? token;
  Data? user;
  List<Order>? order;
  dynamic coupon;
  Location? location;
  @JsonKey(name: 'order_comment')
  dynamic orderComment;
  Total? total;
  String? method;
  @JsonKey(name: 'payment_token')
  String? paymentToken;
  @JsonKey(name: 'delivery_type')
  int? deliveryType;
  @JsonKey(name: 'partial_wallet')
  bool? partialWallet;
  int? dis;
  @JsonKey(name: 'pending_payment')
  bool? pendingPayment;
  dynamic tipAmount;

  PlaceorderModel({
    this.token,
    this.user,
    this.order,
    this.coupon,
    this.location,
    this.orderComment,
    this.total,
    this.method,
    this.paymentToken,
    this.deliveryType,
    this.partialWallet,
    this.dis,
    this.pendingPayment,
    this.tipAmount,
  });

  factory PlaceorderModel.fromJson(Map<String, dynamic> json) {
    return _$PlaceorderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PlaceorderModelToJson(this);
}
