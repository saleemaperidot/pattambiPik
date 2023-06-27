import 'package:json_annotation/json_annotation.dart';
import 'package:pikit/domain/data/products/Model/item_model/item_model.dart';

part 'items.g.dart';

@JsonSerializable()
class Items {
  List<ItemModel>? item;

  Items({this.item});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
