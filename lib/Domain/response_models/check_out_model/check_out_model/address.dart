import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  String? name;
  int? mobile;
  String? housename;
  String? area;
  String? city;
  String? state;
  int? pincode;
  bool? active;
  @JsonKey(name: '_id')
  String? id;

  Address({
    this.name,
    this.mobile,
    this.housename,
    this.area,
    this.city,
    this.state,
    this.pincode,
    this.active,
    this.id,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
