import 'package:json_annotation/json_annotation.dart';

part 'pivot.g.dart';

@JsonSerializable()
class Pivot {
  @JsonKey(name: 'item_id')
  int? itemId;
  @JsonKey(name: 'addon_category_id')
  int? addonCategoryId;

  Pivot({this.itemId, this.addonCategoryId});

  factory Pivot.fromJson(Map<String, dynamic> json) => _$PivotFromJson(json);

  Map<String, dynamic> toJson() => _$PivotToJson(this);
}
