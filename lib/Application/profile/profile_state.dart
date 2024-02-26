part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isloading,
    AdressAddModel? addAddress,
    MyAccountModel? myAccountData,
    UserUpdateModel? updateUser,
    AddressGetModel? getAddress,
    AddressUpdateModel? updateAddress,
    AddressDeleteModel? delAddress,
    OrderCancelModel? cancelOrder,
    WalletGetModel? wallet,
    CouponGetModel? coupon,
    ChangePasswordModel? changePwd,
    ReturnRequestModel? returnOrder,
  }) = _PlaceOrderState;

  factory ProfileState.inital() {
    return const ProfileState(
      isloading: false,
    );
  }
}
