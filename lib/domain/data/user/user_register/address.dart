import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String? lat;
  String? lng;
  String? address;
  String? house;
  dynamic tag;

  Address({this.lat, this.lng, this.address, this.house, this.tag});

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
