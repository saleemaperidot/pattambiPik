import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'unique_order_id')
  String? uniqueOrderId;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'orderstatus_id')
  int? orderstatusId;
  String? location;
  String? address;
  @JsonKey(name: 'restaurant_charge')
  dynamic restaurantCharge;
  @JsonKey(name: 'transaction_id')
  dynamic transactionId;
  @JsonKey(name: 'sub_total')
  dynamic subTotal;
  @JsonKey(name: 'delivery_charge')
  String? deliveryCharge;
  @JsonKey(name: 'tax_amount')
  dynamic taxAmount;
  dynamic payable;
  dynamic total;
  @JsonKey(name: 'order_comment')
  dynamic orderComment;
  @JsonKey(name: 'payment_mode')
  String? paymentMode;
  @JsonKey(name: 'restaurant_id')
  int? restaurantId;
  @JsonKey(name: 'tip_amount')
  dynamic tipAmount;
  @JsonKey(name: 'delivery_type')
  int? deliveryType;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'created_at')
  String? createdAt;
  int? id;

  Data({
    this.uniqueOrderId,
    this.userId,
    this.orderstatusId,
    this.location,
    this.address,
    this.restaurantCharge,
    this.transactionId,
    this.subTotal,
    this.deliveryCharge,
    this.taxAmount,
    this.payable,
    this.total,
    this.orderComment,
    this.paymentMode,
    this.restaurantId,
    this.tipAmount,
    this.deliveryType,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
