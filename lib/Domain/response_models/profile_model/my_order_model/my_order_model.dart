import 'package:json_annotation/json_annotation.dart';

import 'order.dart';
import 'user_datum.dart';

part 'my_order_model.g.dart';

@JsonSerializable()
class MyOrderModel {
  List<UserDatum>? userData;
  int? quantity;
  List<Order>? orders;
  int? currentPage;
  int? totalPages;

  MyOrderModel({
    this.userData,
    this.quantity,
    this.orders,
    this.currentPage,
    this.totalPages,
  });

  factory MyOrderModel.fromJson(Map<String, dynamic> json) {
    return _$MyOrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MyOrderModelToJson(this);
}
