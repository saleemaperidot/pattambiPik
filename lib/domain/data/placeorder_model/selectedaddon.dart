import 'package:json_annotation/json_annotation.dart';

part 'selectedaddon.g.dart';

@JsonSerializable()
class Selectedaddon {
  @JsonKey(name: 'addon_category_name')
  String? addonCategoryName;
  @JsonKey(name: 'addon_id')
  String? addonId;
  @JsonKey(name: 'addon_name')
  String? addonName;
  String? price;

  Selectedaddon({
    this.addonCategoryName,
    this.addonId,
    this.addonName,
    this.price,
  });

  factory Selectedaddon.fromJson(Map<String, dynamic> json) {
    return _$SelectedaddonFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SelectedaddonToJson(this);
}
