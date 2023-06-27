// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      success: json['success'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      runningOrder: json['running_order'],
      deliveryDetails: json['delivery_details'],
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'running_order': instance.runningOrder,
      'delivery_details': instance.deliveryDetails,
    };
