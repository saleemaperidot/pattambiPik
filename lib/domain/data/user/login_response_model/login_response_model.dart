import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'login_response_model.g.dart';

@JsonSerializable()
class LoginResponseModel {
  bool? success;
  Data? data;
  @JsonKey(name: 'running_order')
  dynamic runningOrder;

  LoginResponseModel({this.success, this.data, this.runningOrder});

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LoginResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginResponseModelToJson(this);
}
