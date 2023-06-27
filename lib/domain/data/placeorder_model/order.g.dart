// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Order _$OrderFromJson(Map<String, dynamic> json) => Order(
      selectedaddons: (json['selectedaddons'] as List<dynamic>?)
          ?.map((e) => Selectedaddon.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      addonCategories: (json['addon_categories'] as List<dynamic>?)
          ?.map((e) => AddonCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
      'selectedaddons': instance.selectedaddons,
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
      'addon_categories': instance.addonCategories,
      'quantity': instance.quantity,
    };
