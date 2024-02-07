import 'package:json_annotation/json_annotation.dart';

part 'brand.g.dart';

@JsonSerializable()
class Brand {
  @JsonKey(name: '_id')
  String? id;
  String? brandName;
  String? image;
  bool? active;
  @JsonKey(name: '__v')
  int? v;

  Brand({this.id, this.brandName, this.image, this.active, this.v});

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  Map<String, dynamic> toJson() => _$BrandToJson(this);
}
