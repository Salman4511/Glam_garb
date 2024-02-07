part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required bool isloading,
    CartEditQuantityModel? updateCart,
    CartDeleteModel? delCart,
    CartToWishListModel? cartToWishlist,
  }) = _CartState;

  factory CartState.inital() {
    return const CartState(
      isloading: false,
    );
  }
}
