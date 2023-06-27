import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'user_register.g.dart';

@JsonSerializable()
class UserRegister {
  String? name;
  String? email;
  String? phone;
  String? password;
  Address? address;

  UserRegister({
    this.name,
    this.email,
    this.phone,
    this.password,
    this.address,
  });

  UserRegister.create(
      {required this.name,
      required this.email,
      required this.phone,
      this.address});

  factory UserRegister.fromJson(Map<String, dynamic> json) {
    return _$UserRegisterFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserRegisterToJson(this);
}
