// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as int?,
      authToken: json['auth_token'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      defaultAddressId: json['default_address_id'] as int?,
      defaultAddress: json['default_address'],
      deliveryPin: json['delivery_pin'] as String?,
      walletBalance: json['wallet_balance'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'auth_token': instance.authToken,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'default_address_id': instance.defaultAddressId,
      'default_address': instance.defaultAddress,
      'delivery_pin': instance.deliveryPin,
      'wallet_balance': instance.walletBalance,
    };
