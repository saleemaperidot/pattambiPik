// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      email: json['email'],
      password: json['password'],
      accessToken: json['accessToken'],
      phone: json['phone'] as String?,
      provider: json['provider'],
      address: json['address'],
    );

Map<String, dynamic> _$LoginModelToJson(LoginModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'accessToken': instance.accessToken,
      'phone': instance.phone,
      'provider': instance.provider,
      'address': instance.address,
    };
