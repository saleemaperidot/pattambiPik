// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaraunts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestarauntsModel _$RestarauntsModelFromJson(Map<String, dynamic> json) =>
    RestarauntsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      rating: json['rating'] as String?,
      deliveryTime: json['delivery_time'] as String?,
      priceRange: json['price_range'] as String?,
      slug: json['slug'] as String?,
      isFeatured: json['is_featured'] as int?,
      isActive: json['is_active'] as int?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      distance: (json['distance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RestarauntsModelToJson(RestarauntsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'rating': instance.rating,
      'delivery_time': instance.deliveryTime,
      'price_range': instance.priceRange,
      'slug': instance.slug,
      'is_featured': instance.isFeatured,
      'is_active': instance.isActive,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'distance': instance.distance,
    };
