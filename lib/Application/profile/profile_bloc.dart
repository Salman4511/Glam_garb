import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_get_model/user_data.dart';
import 'package:glam_garb/domain/response_models/profile_model/address_delete_model/address_delete_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/address_get_model/address_get_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/address_update_model/address_update_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/adress_add_model/adress_add_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/change_password_model/change_password_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/coupon_get_model/coupon_get_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/my_account_model/my_account_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/order_cancel_model/order_cancel_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/return_request_model/return_request_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/user_update_model/user_update_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/wallet_get_model/wallet_get_model.dart';
import 'package:glam_garb/infrastructure/service/profile/profile_repo.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileRepo repo = ProfileRepo();
  ProfileBloc(this.repo) : super(ProfileState.inital()) {
    on<_AddAddress>((event, emit) async {
      final addAddress = await repo.addAddress(event.name, event.houseName,
          event.phone, event.city, event.area, event.state, event.pinCode);
      emit(state.copyWith(addAddress: addAddress, isloading: false));
    });

    on<_UserDetails>((event, emit) async {
      final userData = await repo.userDetails();
      emit(state.copyWith(myAccountData: userData, isloading: false));
    });

    on<_UserUpdate>((event, emit) async {
      final userUpdate = await repo.updateUser(event.name, event.mobile);
      emit(state.copyWith(updateUser: userUpdate, isloading: false));
    });

    on<_UpdateAddress>((event, emit) async {
      final updateAddress = await repo.updateAddress(
          event.id,
          event.name,
          event.houseName,
          event.phone,
          event.city,
          event.area,
          event.state,
          event.pinCode);
      emit(state.copyWith(updateAddress: updateAddress, isloading: false));
    });

    on<_DelAddress>((event, emit) async {
      final delAddress = await repo.delAddress(event.id);
      emit(state.copyWith(delAddress: delAddress, isloading: false));
    });

    on<_CancelOrder>((event, emit) async {
      final cancelOrder = await repo.cancelOrders(event.orderId);
      emit(state.copyWith(cancelOrder: cancelOrder, isloading: false));
    });

    on<_Wallet>((event, emit) async {
      final wallet = await repo.wallet();
      emit(state.copyWith(wallet: wallet, isloading: false));
    });

    on<_Coupon>((event, emit) async {
      final coupon = await repo.coupons();
      emit(state.copyWith(coupon: coupon, isloading: false));
    });

    on<_ChangePwd>((event, emit) async {
      final password = await repo.changePwd(event.newPwd);
      emit(state.copyWith(changePwd: password, isloading: false));
    });
   
    on<_ReturnRequest>((event, emit) async {
      final returnRequest = await repo.requestReturn(event.orderId,event.reason);
      emit(state.copyWith(returnOrder: returnRequest, isloading: false));
    });

  }
}
