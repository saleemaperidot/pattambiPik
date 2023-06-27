// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_place.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderPlace _$OrderPlaceFromJson(Map<String, dynamic> json) => OrderPlace(
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      order: (json['order'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupon: json['coupon'],
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      orderComment: json['order_comment'],
      total: json['total'] == null
          ? null
          : Total.fromJson(json['total'] as Map<String, dynamic>),
      method: json['method'] as String?,
      paymentToken: json['payment_token'] as String?,
      deliveryType: json['delivery_type'] as int?,
      partialWallet: json['partial_wallet'] as bool?,
      dis: json['dis'] as int?,
      pendingPayment: json['pending_payment'] as bool?,
      tipAmount: json['tipAmount'],
    );

Map<String, dynamic> _$OrderPlaceToJson(OrderPlace instance) =>
    <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
      'order': instance.order,
      'coupon': instance.coupon,
      'location': instance.location,
      'order_comment': instance.orderComment,
      'total': instance.total,
      'method': instance.method,
      'payment_token': instance.paymentToken,
      'delivery_type': instance.deliveryType,
      'partial_wallet': instance.partialWallet,
      'dis': instance.dis,
      'pending_payment': instance.pendingPayment,
      'tipAmount': instance.tipAmount,
    };
