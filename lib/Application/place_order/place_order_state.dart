part of 'place_order_bloc.dart';

@freezed
class PlaceOrderState with _$PlaceOrderState {
  const factory PlaceOrderState(
      {required bool isloading,
      CashOnDeliveryModel? cod,
      RazorPayModel? razorpay}) = _PlaceOrderState;

  factory PlaceOrderState.inital() {
    return const PlaceOrderState(
      isloading: false,
    );
  }
}
