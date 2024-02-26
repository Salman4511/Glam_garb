import 'package:json_annotation/json_annotation.dart';

part 'cash_on_delivery_model.g.dart';

@JsonSerializable()
class CashOnDeliveryModel {
  bool? codsuccess;

  CashOnDeliveryModel({this.codsuccess});

  factory CashOnDeliveryModel.fromJson(Map<String, dynamic> json) {
    return _$CashOnDeliveryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CashOnDeliveryModelToJson(this);
}
