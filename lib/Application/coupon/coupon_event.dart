part of 'coupon_bloc.dart';

@freezed
class CouponEvent with _$CouponEvent {
  const factory CouponEvent() = _CouponEvent;

  factory CouponEvent.applyCoupon(int total, String couponCode) = _ApplyCoupon;
}
