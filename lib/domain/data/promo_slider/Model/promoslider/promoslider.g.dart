// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promoslider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Promoslider _$PromosliderFromJson(Map<String, dynamic> json) => Promoslider(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$PromosliderToJson(Promoslider instance) =>
    <String, dynamic>{
      'data': instance.data,
      'url': instance.url,
    };
