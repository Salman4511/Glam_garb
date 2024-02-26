part of 'coupon_bloc.dart';

@freezed
class CouponState with _$CouponState {
  const factory CouponState({
    required bool isloading,
    CouponModel? coupon,
  }) = _CouponState;

  factory CouponState.inital() {
    return const CouponState(
      isloading: false,
    );
  }
}
