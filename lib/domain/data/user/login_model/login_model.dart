import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  dynamic email;
  dynamic password;
  dynamic accessToken;
  String? phone;
  dynamic provider;
  dynamic address;

  LoginModel({
    this.email,
    this.password,
    this.accessToken,
    this.phone,
    this.provider,
    this.address,
  });

  LoginModel.create(
      {required this.phone,
      required this.email,
      required this.accessToken,
      required this.address,
      required this.password,
      required this.provider});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return _$LoginModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
