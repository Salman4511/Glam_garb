// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CouponGetModel _$CouponGetModelFromJson(Map<String, dynamic> json) =>
    CouponGetModel(
      userData: (json['userData'] as List<dynamic>?)
          ?.map((e) => UserDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int?,
      coupons: (json['coupons'] as List<dynamic>?)
          ?.map((e) => Coupon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CouponGetModelToJson(CouponGetModel instance) =>
    <String, dynamic>{
      'userData': instance.userData,
      'quantity': instance.quantity,
      'coupons': instance.coupons,
    };
