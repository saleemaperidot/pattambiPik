import 'package:json_annotation/json_annotation.dart';

import 'location.dart';
import 'order.dart';
import 'total.dart';
import 'user.dart';

part 'order_place.g.dart';

@JsonSerializable()
class OrderPlace {
  String? token;
  User? user;
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

  OrderPlace({
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

  factory OrderPlace.fromJson(Map<String, dynamic> json) {
    return _$OrderPlaceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderPlaceToJson(this);
}
