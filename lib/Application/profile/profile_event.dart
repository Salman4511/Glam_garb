part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent() = _ProfileEvent;

  factory ProfileEvent.addAddress(String name, String houseName, int phone,
      String city, String area, String state, int pinCode) = _AddAddress;

  factory ProfileEvent.userDetails() = _UserDetails;

  factory ProfileEvent.userUpdate(String name, dynamic mobile) = _UserUpdate;

  factory ProfileEvent.getAddress() = _GetAddress;

  factory ProfileEvent.delAddress(String id) = _DelAddress;

  factory ProfileEvent.cancelOrder(String orderId) = _CancelOrder;

  factory ProfileEvent.wallet() = _Wallet;

  factory ProfileEvent.coupon() = _Coupon;

  factory ProfileEvent.changePwd(String newPwd) = _ChangePwd;
  
  factory ProfileEvent.returnRequest(String orderId,String reason) = _ReturnRequest;
  
  factory ProfileEvent.updateAddress(
      String id,
      String name,
      String houseName,
      int phone,
      String city,
      String area,
      String state,
      int pinCode) = _UpdateAddress;
}
