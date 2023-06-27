// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultAddress _$DefaultAddressFromJson(Map<String, dynamic> json) =>
    DefaultAddress(
      address: json['address'] as String?,
      house: json['house'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      tag: json['tag'],
    );

Map<String, dynamic> _$DefaultAddressToJson(DefaultAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
      'house': instance.house,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'tag': instance.tag,
    };
