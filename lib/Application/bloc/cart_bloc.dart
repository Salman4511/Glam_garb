import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_edit_model/cart_update_quantity_model.dart';
import 'package:glam_garb/Infrastructure/service/cart/cart_repo.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartRepo repo =CartRepo();
 CartBloc(this.repo) : super(CartState.inital()) {
    
   on<_UpdateCartQuantity>((event, emit) async {
      final updateCart = await repo.updateCartQuantity(event.id,event.operation,event.size);
      emit(state.copyWith(updateCart: updateCart , isloading: false));
    });

  }
}
