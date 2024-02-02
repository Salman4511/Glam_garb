part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
   const factory CartEvent() = _CartEvent;

  factory CartEvent.updateCartQuantity(String id,dynamic operation,String size) = _UpdateCartQuantity;

}