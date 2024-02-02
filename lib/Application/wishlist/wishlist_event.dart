part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent() = _WishlistEvent;

  factory WishlistEvent.addFavorite(String id) = _AddFavorite;

  factory WishlistEvent.getFavorite() = _GetFavorite;

  factory WishlistEvent.deleteFavorite(String id) = _DeleteFavorite;

  factory WishlistEvent.favToCart(String id) = _FavToCart;
}
