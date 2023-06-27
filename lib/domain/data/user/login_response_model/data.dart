import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int? id;
  @JsonKey(name: 'auth_token')
  String? authToken;
  String? name;
  String? email;
  String? phone;
  @JsonKey(name: 'default_address_id')
  int? defaultAddressId;
  @JsonKey(name: 'default_address')
  dynamic defaultAddress;
  @JsonKey(name: 'delivery_pin')
  String? deliveryPin;
  @JsonKey(name: 'wallet_balance')
  int? walletBalance;

  Data({
    this.id,
    this.authToken,
    this.name,
    this.email,
    this.phone,
    this.defaultAddressId,
    this.defaultAddress,
    this.deliveryPin,
    this.walletBalance,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
