import 'package:json_annotation/json_annotation.dart';

import 'addon.dart';
import 'pivot.dart';

part 'addon_category.g.dart';

@JsonSerializable()
class AddonCategory {
  int? id;
  String? name;
  String? type;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  dynamic description;
  Pivot? pivot;
  List<Addon>? addons;

  AddonCategory({
    this.id,
    this.name,
    this.type,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.description,
    this.pivot,
    this.addons,
  });

  factory AddonCategory.fromJson(Map<String, dynamic> json) {
    return _$AddonCategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddonCategoryToJson(this);
}
