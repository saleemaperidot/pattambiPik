import 'package:json_annotation/json_annotation.dart';

import 'addon_category.dart';
import 'selectedaddon.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  List<Selectedaddon>? selectedaddons;
  int? id;
  @JsonKey(name: 'restaurant_id')
  int? restaurantId;
  @JsonKey(name: 'item_category_id')
  int? itemCategoryId;
  String? name;
  String? price;
  @JsonKey(name: 'old_price')
  String? oldPrice;
  String? image;
  @JsonKey(name: 'is_recommended')
  int? isRecommended;
  @JsonKey(name: 'is_popular')
  int? isPopular;
  @JsonKey(name: 'is_new')
  int? isNew;
  dynamic desc;
  @JsonKey(name: 'placeholder_image')
  dynamic placeholderImage;
  @JsonKey(name: 'is_active')
  int? isActive;
  @JsonKey(name: 'is_veg')
  int? isVeg;
  @JsonKey(name: 'addon_categories')
  List<AddonCategory>? addonCategories;
  int? quantity;

  Order({
    required this.selectedaddons,
    required this.id,
    required this.restaurantId,
    required this.itemCategoryId,
    required this.name,
    required this.price,
    required this.oldPrice,
    required this.image,
    required this.isRecommended,
    required this.isPopular,
    required this.isNew,
    required this.desc,
    required this.placeholderImage,
    required this.isActive,
    required this.isVeg,
    required this.addonCategories,
    required this.quantity,
  });

  Order.create({
    this.selectedaddons,
    this.id,
    this.restaurantId,
    this.itemCategoryId,
    this.name,
    this.price,
    this.oldPrice,
    this.image,
    this.isRecommended,
    this.isPopular,
    this.isNew,
    this.desc,
    this.placeholderImage,
    this.isActive,
    this.isVeg,
    this.addonCategories,
    this.quantity,
  });
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  Map<String, dynamic> toJson() => _$OrderToJson(this);
}
