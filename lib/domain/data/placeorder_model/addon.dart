import 'package:json_annotation/json_annotation.dart';

part 'addon.g.dart';

@JsonSerializable()
class Addon {
  int? id;
  String? name;
  String? price;
  @JsonKey(name: 'addon_category_id')
  int? addonCategoryId;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  @JsonKey(name: 'is_active')
  int? isActive;

  Addon({
    this.id,
    this.name,
    this.price,
    this.addonCategoryId,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.isActive,
  });

  factory Addon.fromJson(Map<String, dynamic> json) => _$AddonFromJson(json);

  Map<String, dynamic> toJson() => _$AddonToJson(this);
}
