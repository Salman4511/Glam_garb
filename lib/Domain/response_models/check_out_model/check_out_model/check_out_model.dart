import 'package:json_annotation/json_annotation.dart';

import 'products_in_cart.dart';
import 'user_datum.dart';

part 'check_out_model.g.dart';

@JsonSerializable()
class CheckOutModel {
  List<ProductsInCart>? productsInCart;
  List<UserDatum>? userData;
  int? total;
  List<int>? price;
  List<int>? quantityy;
  int? quantity;
  int? catDiscount;

  CheckOutModel({
    this.productsInCart,
    this.userData,
    this.total,
    this.price,
    this.quantityy,
    this.quantity,
    this.catDiscount,
  });

  factory CheckOutModel.fromJson(Map<String, dynamic> json) {
    return _$CheckOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckOutModelToJson(this);
}
