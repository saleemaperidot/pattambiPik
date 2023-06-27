import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  String? lat;
  String? lng;
  String? address;
  String? house;
  dynamic tag;

  Location({this.lat, this.lng, this.address, this.house, this.tag});

  factory Location.fromJson(Map<String, dynamic> json) {
    return _$LocationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
