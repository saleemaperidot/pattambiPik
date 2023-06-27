// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddonCategory _$AddonCategoryFromJson(Map<String, dynamic> json) =>
    AddonCategory(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      userId: json['user_id'] as int?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      description: json['description'],
      pivot: json['pivot'] == null
          ? null
          : Pivot.fromJson(json['pivot'] as Map<String, dynamic>),
      addons: (json['addons'] as List<dynamic>?)
          ?.map((e) => Addon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AddonCategoryToJson(AddonCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'user_id': instance.userId,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'description': instance.description,
      'pivot': instance.pivot,
      'addons': instance.addons,
    };
