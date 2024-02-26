part of 'check_out_bloc.dart';

@freezed
class CheckOutEvent with _$CheckOutEvent {
  const factory CheckOutEvent() = _CheckOutEvent;

  factory CheckOutEvent.checkOut() = _CheckOut;

  factory CheckOutEvent.selectAddress(String id) = _SelectAddress;

  factory CheckOutEvent.applyCoupon(int total, String couponCode) =
      _ApplyCoupon;
}
