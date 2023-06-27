import 'package:json_annotation/json_annotation.dart';

import 'item.dart';
import 'restaurant.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  List<Restaurant>? restaurants;
  List<Item>? items;

  SearchModel({this.restaurants, this.items});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
