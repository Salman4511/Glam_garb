import 'package:json_annotation/json_annotation.dart';

import 'products_in_cart.dart';
import 'user_data.dart';

part 'cart_get_model.g.dart';

@JsonSerializable()
class CartGetModel {
  List<ProductsInCart>? productsInCart;
  UserData? userData;
  int? total;
  int? quantity;

  CartGetModel({
    this.productsInCart,
    this.userData,
    this.total,
    this.quantity,
  });

  factory CartGetModel.fromJson(Map<String, dynamic> json) {
    return _$CartGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CartGetModelToJson(this);
}
