import 'package:json_annotation/json_annotation.dart';

part 'coupon_model.g.dart';

@JsonSerializable()
class CouponModel {
  int? discount;
  String? message;

  CouponModel({this.discount, this.message});

  factory CouponModel.fromJson(Map<String, dynamic> json) {
    return _$CouponModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponModelToJson(this);
}
