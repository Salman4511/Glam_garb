import 'package:json_annotation/json_annotation.dart';

import 'product_details.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String? productId;
  int? quantity;
  String? size;
  int? subtotal;
  @JsonKey(name: '_id')
  String? id;
  ProductDetails? productDetails;

  Item({
    this.productId,
    this.quantity,
    this.size,
    this.subtotal,
    this.id,
    this.productDetails,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
