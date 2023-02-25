import 'package:json_annotation/json_annotation.dart';

part 'restaraunts_model.g.dart';

@JsonSerializable()
class RestarauntsModel {
  int? id;
  String? name;
  String? description;
  String? image;
  String? rating;
  @JsonKey(name: 'delivery_time')
  String? deliveryTime;
  @JsonKey(name: 'price_range')
  String? priceRange;
  String? slug;
  @JsonKey(name: 'is_featured')
  int? isFeatured;
  @JsonKey(name: 'is_active')
  int? isActive;
  String? latitude;
  String? longitude;
  double? distance;

  RestarauntsModel({
    this.id,
    this.name,
    this.description,
    this.image,
    this.rating,
    this.deliveryTime,
    this.priceRange,
    this.slug,
    this.isFeatured,
    this.isActive,
    this.latitude,
    this.longitude,
    this.distance,
  });

  factory RestarauntsModel.fromJson(Map<String, dynamic> json) {
    return _$RestarauntsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RestarauntsModelToJson(this);
}
