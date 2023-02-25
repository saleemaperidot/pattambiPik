import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'promoslider.g.dart';

@JsonSerializable()
class Promoslider {
  @JsonKey(name: 'data')
  Data? data;
  @JsonKey(name: 'url')
  String? url;

  Promoslider({this.data, this.url});

  factory Promoslider.fromJson(Map<String, dynamic> json) {
    return _$PromosliderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PromosliderToJson(this);
}
