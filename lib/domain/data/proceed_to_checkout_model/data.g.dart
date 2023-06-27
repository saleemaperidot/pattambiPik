// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      uniqueOrderId: json['unique_order_id'] as String?,
      userId: json['user_id'] as int?,
      orderstatusId: json['orderstatus_id'] as int?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      restaurantCharge: json['restaurant_charge'],
      transactionId: json['transaction_id'],
      subTotal: json['sub_total'],
      deliveryCharge: json['delivery_charge'] as String?,
      taxAmount: json['tax_amount'],
      payable: json['payable'],
      total: json['total'],
      orderComment: json['order_comment'],
      paymentMode: json['payment_mode'] as String?,
      restaurantId: json['restaurant_id'] as int?,
      tipAmount: json['tip_amount'],
      deliveryType: json['delivery_type'] as int?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      id: json['id'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'unique_order_id': instance.uniqueOrderId,
      'user_id': instance.userId,
      'orderstatus_id': instance.orderstatusId,
      'location': instance.location,
      'address': instance.address,
      'restaurant_charge': instance.restaurantCharge,
      'transaction_id': instance.transactionId,
      'sub_total': instance.subTotal,
      'delivery_charge': instance.deliveryCharge,
      'tax_amount': instance.taxAmount,
      'payable': instance.payable,
      'total': instance.total,
      'order_comment': instance.orderComment,
      'payment_mode': instance.paymentMode,
      'restaurant_id': instance.restaurantId,
      'tip_amount': instance.tipAmount,
      'delivery_type': instance.deliveryType,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'id': instance.id,
    };
