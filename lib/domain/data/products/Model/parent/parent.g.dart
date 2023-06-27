// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parent _$ParentFromJson(Map<String, dynamic> json) => Parent(
      recommended: (json['recommended'] as List<dynamic>?)
          ?.map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemsDemo: json['itemsDemo'] == null
          ? null
          : ItemDemo.fromJson(json['itemsDemo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParentToJson(Parent instance) => <String, dynamic>{
      'recommended': instance.recommended,
      'itemsDemo': instance.itemsDemo,
    };
