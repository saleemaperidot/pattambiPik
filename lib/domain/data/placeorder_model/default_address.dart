import 'package:json_annotation/json_annotation.dart';

part 'default_address.g.dart';

@JsonSerializable()
class DefaultAddress {
  String? address;
  String? house;
  String? latitude;
  String? longitude;
  dynamic tag;

  DefaultAddress({
    this.address,
    this.house,
    this.latitude,
    this.longitude,
    this.tag,
  });

  factory DefaultAddress.fromJson(Map<String, dynamic> json) {
    return _$DefaultAddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DefaultAddressToJson(this);
}
