import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  bool? success;
  Data? data;
  @JsonKey(name: 'running_order')
  dynamic runningOrder;
  @JsonKey(name: 'delivery_details')
  dynamic deliveryDetails;

  User({this.success, this.data, this.runningOrder, this.deliveryDetails});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
