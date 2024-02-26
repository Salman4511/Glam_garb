import 'package:json_annotation/json_annotation.dart';

part 'order_cancel_model.g.dart';

@JsonSerializable()
class OrderCancelModel {
  String? message;
  String? orderId;

  OrderCancelModel({this.message, this.orderId});

  factory OrderCancelModel.fromJson(Map<String, dynamic> json) {
    return _$OrderCancelModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrderCancelModelToJson(this);
}
