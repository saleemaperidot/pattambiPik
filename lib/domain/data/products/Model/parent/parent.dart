import 'package:json_annotation/json_annotation.dart';
import 'package:pikit/domain/data/products/Model/item_model/item_model.dart';
import 'package:pikit/domain/data/products/Model/items/item_demo.dart';

import '../items/items.dart';

part 'parent.g.dart';

@JsonSerializable()
class Parent {
  List<ItemModel>? recommended;
  ItemDemo? itemsDemo;

  Parent({this.recommended, this.itemsDemo});

  factory Parent.fromJson(Map<String, dynamic> json) {
    return _$ParentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ParentToJson(this);
}
