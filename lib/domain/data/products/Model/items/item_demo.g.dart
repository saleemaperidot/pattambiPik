// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_demo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemDemo _$ItemDemoFromJson(Map<String, dynamic> json) => ItemDemo(
      items: json['items'] == null
          ? null
          : Items.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemDemoToJson(ItemDemo instance) => <String, dynamic>{
      'items': instance.items,
    };
