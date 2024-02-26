import 'package:json_annotation/json_annotation.dart';

import 'image.dart';
import 'size.dart';

part 'product_details.g.dart';

@JsonSerializable()
class ProductDetails {
  @JsonKey(name: '_id')
  String? id;
  String? productName;
  String? description;
  List<String>? color;
  List<Size>? sizes;
  String? brand;
  String? category;
  int? regularPrice;
  int? salePrice;
  int? offerPrice;
  List<Image>? images;
  bool? active;
  String? gender;
  String? createdOn;
  List<dynamic>? reviews;
  @JsonKey(name: '__v')
  int? v;

  ProductDetails({
    this.id,
    this.productName,
    this.description,
    this.color,
    this.sizes,
    this.brand,
    this.category,
    this.regularPrice,
    this.salePrice,
    this.offerPrice,
    this.images,
    this.active,
    this.gender,
    this.createdOn,
    this.reviews,
    this.v,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) {
    return _$ProductDetailsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductDetailsToJson(this);
}
