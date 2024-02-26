part of 'check_out_bloc.dart';

@freezed
class CheckOutState with _$CheckOutState {
  const factory CheckOutState({
    required bool isloading,
    CheckOutModel? checkOut,
    AddressSelectModel? selectAdress,
    CouponModel? coupon,
  }) = _CheckOutState;

  factory CheckOutState.inital() {
    return const CheckOutState(
      isloading: false,
    );
  }
}
