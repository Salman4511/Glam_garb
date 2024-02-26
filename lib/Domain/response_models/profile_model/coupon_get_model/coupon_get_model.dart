import 'package:json_annotation/json_annotation.dart';

import 'coupon.dart';
import 'user_datum.dart';

part 'coupon_get_model.g.dart';

@JsonSerializable()
class CouponGetModel {
  List<UserDatum>? userData;
  int? quantity;
  List<Coupon>? coupons;

  CouponGetModel({this.userData, this.quantity, this.coupons});

  factory CouponGetModel.fromJson(Map<String, dynamic> json) {
    return _$CouponGetModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CouponGetModelToJson(this);
}
