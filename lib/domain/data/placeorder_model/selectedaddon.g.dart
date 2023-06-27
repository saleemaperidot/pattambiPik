// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selectedaddon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Selectedaddon _$SelectedaddonFromJson(Map<String, dynamic> json) =>
    Selectedaddon(
      addonCategoryName: json['addon_category_name'] as String?,
      addonId: json['addon_id'] as String?,
      addonName: json['addon_name'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$SelectedaddonToJson(Selectedaddon instance) =>
    <String, dynamic>{
      'addon_category_name': instance.addonCategoryName,
      'addon_id': instance.addonId,
      'addon_name': instance.addonName,
      'price': instance.price,
    };
