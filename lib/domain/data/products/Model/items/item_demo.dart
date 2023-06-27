import 'package:json_annotation/json_annotation.dart';

import 'items.dart';

part 'item_demo.g.dart';

@JsonSerializable()
class ItemDemo {
  Items? items;

  ItemDemo({this.items});

  factory ItemDemo.fromJson(Map<String, dynamic> json) {
    return _$ItemDemoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ItemDemoToJson(this);
}
