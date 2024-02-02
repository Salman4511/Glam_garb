import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_add_model/wish_list_add_model.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_delete_model/wish_list_delete_model.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_get_model/wish_list_get_model.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_to_bag_model/wish_list_to_bag_model.dart';
import 'package:glam_garb/Infrastructure/service/wishlist/wishlist_repo.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';
part 'wishlist_bloc.freezed.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  final WishListRepo repo;
  WishlistBloc(this.repo) : super(WishlistState.inital()) {
    on<_AddFavorite>((event, emit) async {
      final addFav = await repo.addToWishList(event.id);
      emit(state.copyWith(wishlist: addFav, isloading: false));
    });

    on<_GetFavorite>((event, emit) async {
      final getFav = await repo.getWishList();
      emit(state.copyWith(getWishlist: getFav, isloading: false));
    });

    on<_DeleteFavorite>((event, emit) async {
      final delFav = await repo.deleteFromWishList(event.id);
      emit(state.copyWith(deleteWishlist: delFav, isloading: false));
    });

    on<_FavToCart>((event, emit) async {
      final toCart = await repo.addToCart(event.id);
      emit(state.copyWith(wishlistToCart: toCart, isloading: false));
    });
  }
}
