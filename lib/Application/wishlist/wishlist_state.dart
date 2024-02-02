part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const factory WishlistState({
    required bool isloading,
    WishListAddModel? wishlist,
    WishListGetModel? getWishlist,
    WishlistDeleteModel? deleteWishlist,
    WishlistToCartModel? wishlistToCart,
  }) = _WishlistState;

  factory WishlistState.inital() {
    return const WishlistState(
      isloading: false,
    );
  }
}
