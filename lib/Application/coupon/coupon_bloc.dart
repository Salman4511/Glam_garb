import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb/domain/response_models/check_out_model/coupon_model/coupon_model.dart';
import 'package:glam_garb/infrastructure/service/checkOut/check_out_repo.dart';

part 'coupon_event.dart';
part 'coupon_state.dart';
part 'coupon_bloc.freezed.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  CheckOutRepo repo = CheckOutRepo();
  CouponBloc(this.repo) : super(CouponState.inital()) {
    on<_ApplyCoupon>((event, emit) async {
      final coupon = await repo.applyCoupon(event.total, event.couponCode);
      emit(state.copyWith(coupon: coupon, isloading: false));
    });
  }
}
