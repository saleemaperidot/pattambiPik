import 'package:json_annotation/json_annotation.dart';

import 'restaurant.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
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
  Restaurant? restaurant;

  Item({
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
    this.restaurant,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
