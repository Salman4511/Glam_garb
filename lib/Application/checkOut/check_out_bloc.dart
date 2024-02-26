import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb/domain/response_models/check_out_model/address_select_model/address_select_model.dart';
import 'package:glam_garb/domain/response_models/check_out_model/check_out_model/check_out_model.dart';
import 'package:glam_garb/domain/response_models/check_out_model/coupon_model/coupon_model.dart';
import 'package:glam_garb/infrastructure/service/checkOut/check_out_repo.dart';

part 'check_out_event.dart';
part 'check_out_state.dart';
part 'check_out_bloc.freezed.dart';

class CheckOutBloc extends Bloc<CheckOutEvent, CheckOutState> {
  CheckOutRepo repo = CheckOutRepo();
  CheckOutBloc(this.repo) : super(CheckOutState.inital()) {
    on<_CheckOut>((event, emit) async {
      final checkOut = await repo.checkOut();
      emit(state.copyWith(checkOut: checkOut, isloading: false));
    });

    on<_SelectAddress>((event, emit) async {
      final selectAdress = await repo.selectAddress(event.id);
      emit(state.copyWith(selectAdress: selectAdress, isloading: false));
    });

    on<_ApplyCoupon>((event, emit) async {
      final coupon = await repo.applyCoupon(event.total, event.couponCode);
      emit(state.copyWith(coupon: coupon, isloading: false));
    });
  }
}
