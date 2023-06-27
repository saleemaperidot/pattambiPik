// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as int?,
      restaurantId: json['restaurant_id'] as int?,
      itemCategoryId: json['item_category_id'] as int?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      oldPrice: json['old_price'] as String?,
      image: json['image'] as String?,
      isRecommended: json['is_recommended'] as int?,
      isPopular: json['is_popular'] as int?,
      isNew: json['is_new'] as int?,
      desc: json['desc'],
      placeholderImage: json['placeholder_image'],
      isActive: json['is_active'] as int?,
      isVeg: json['is_veg'] as int?,
      restaurant: json['restaurant'] == null
          ? null
          : Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'restaurant_id': instance.restaurantId,
      'item_category_id': instance.itemCategoryId,
      'name': instance.name,
      'price': instance.price,
      'old_price': instance.oldPrice,
      'image': instance.image,
      'is_recommended': instance.isRecommended,
      'is_popular': instance.isPopular,
      'is_new': instance.isNew,
      'desc': instance.desc,
      'placeholder_image': instance.placeholderImage,
      'is_active': instance.isActive,
      'is_veg': instance.isVeg,
      'restaurant': instance.restaurant,
    };
