import 'package:json_annotation/json_annotation.dart';

import 'product.dart';
import 'user_data.dart';

part 'wish_list_get_model.g.dart';

@JsonSerializable()
class WishListGetModel {
  UserData? userData;
  List<Product>? products;
  int? quantity;

  WishListGetModel({this.userData, this.products, this.quantity});

  factory WishListGetModel.fromJson(Map<String, dynamic> json) {
    return _$WishListGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WishListGetModelToJson(this);
}
