part of 'place_order_bloc.dart';

@freezed
class PlaceOrderEvent with _$PlaceOrderEvent {
  const factory PlaceOrderEvent() = _PlaceOrderEvent;

  factory PlaceOrderEvent.placeOrder(
      String paymentMethod, int discount, int categorydiscount) = _PlaceOrder;

  factory PlaceOrderEvent.placeOrderRazorpay(
          String paymentMethod, int discount, int categorydiscount) =
      _PlaceOrderRazorpay;
}
