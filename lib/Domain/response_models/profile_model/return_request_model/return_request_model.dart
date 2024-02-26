import 'package:json_annotation/json_annotation.dart';

import 'update_order.dart';

part 'return_request_model.g.dart';

@JsonSerializable()
class ReturnRequestModel {
  String? message;
  String? orderId;
  UpdateOrder? updateOrder;

  ReturnRequestModel({this.message, this.orderId, this.updateOrder});

  factory ReturnRequestModel.fromJson(Map<String, dynamic> json) {
    return _$ReturnRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReturnRequestModelToJson(this);
}
