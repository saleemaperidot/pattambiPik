import 'package:json_annotation/json_annotation.dart';

part 'order_request.g.dart';

@JsonSerializable()
class OrderRequest {
  String? token;
  @JsonKey(name: 'user_id')
  int? userId;

  OrderRequest({this.token, this.userId});

  factory OrderRequest.fromJson(Map<String, dynamic> json) {
    return _$OrderRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderRequestToJson(this);
}
