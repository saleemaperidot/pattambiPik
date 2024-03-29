import 'package:json_annotation/json_annotation.dart';

import 'orderitem.dart';
import 'restaurant.dart';

part 'order_list_model.g.dart';

@JsonSerializable()
class OrderListModel {
  int? id;
  @JsonKey(name: 'unique_order_id')
  String? uniqueOrderId;
  @JsonKey(name: 'orderstatus_id')
  int? orderstatusId;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'coupon_name')
  dynamic couponName;
  String? location;
  String? address;
  dynamic tax;
  @JsonKey(name: 'restaurant_charge')
  dynamic restaurantCharge;
  @JsonKey(name: 'delivery_charge')
  String? deliveryCharge;
  int? total;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'payment_mode')
  String? paymentMode;
  @JsonKey(name: 'order_comment')
  dynamic orderComment;
  @JsonKey(name: 'restaurant_id')
  int? restaurantId;
  @JsonKey(name: 'transaction_id')
  dynamic transactionId;
  @JsonKey(name: 'delivery_type')
  int? deliveryType;
  int? payable;
  @JsonKey(name: 'wallet_amount')
  dynamic walletAmount;
  @JsonKey(name: 'tip_amount')
  dynamic tipAmount;
  @JsonKey(name: 'tax_amount')
  int? taxAmount;
  @JsonKey(name: 'coupon_amount')
  dynamic couponAmount;
  @JsonKey(name: 'sub_total')
  int? subTotal;
  List<Orderitem>? orderitems;
  Restaurant? restaurant;

  OrderListModel({
    this.id,
    this.uniqueOrderId,
    this.orderstatusId,
    this.userId,
    this.couponName,
    this.location,
    this.address,
    this.tax,
    this.restaurantCharge,
    this.deliveryCharge,
    this.total,
    this.createdAt,
    this.updatedAt,
    this.paymentMode,
    this.orderComment,
    this.restaurantId,
    this.transactionId,
    this.deliveryType,
    this.payable,
    this.walletAmount,
    this.tipAmount,
    this.taxAmount,
    this.couponAmount,
    this.subTotal,
    this.orderitems,
    this.restaurant,
  });

  factory OrderListModel.fromJson(Map<String, dynamic> json) {
    return _$OrderListModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderListModelToJson(this);
}
