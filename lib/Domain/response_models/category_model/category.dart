import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  @JsonKey(name: '_id')
  String? id;
  String? categoryName;
  bool? active;
  @JsonKey(name: '__v')
  int? v;
  int? categoryOffer;
  String? expiry;
  int? maxDiscount;
  int? minAmount;

  Category({
    this.id,
    this.categoryName,
    this.active,
    this.v,
    this.categoryOffer,
    this.expiry,
    this.maxDiscount,
    this.minAmount,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return _$CategoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
