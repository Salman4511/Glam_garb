import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:glam_garb/domain/response_models/check_out_model/cash_on_delivery_model/cash_on_delivery_model.dart';
import 'package:glam_garb/domain/response_models/check_out_model/razor_pay_model/razor_pay_model.dart';
import 'package:glam_garb/infrastructure/service/checkOut/check_out_repo.dart';

part 'place_order_event.dart';
part 'place_order_state.dart';
part 'place_order_bloc.freezed.dart';

class PlaceOrderBloc extends Bloc<PlaceOrderEvent, PlaceOrderState> {
  CheckOutRepo repo = CheckOutRepo();
  PlaceOrderBloc(this.repo) : super(PlaceOrderState.inital()) {
    on<_PlaceOrder>((event, emit) async {
      final cod = await repo.placeOrder(
          event.paymentMethod, event.discount, event.categorydiscount);
      emit(state.copyWith(cod: cod, isloading: false));
    });

    on<_PlaceOrderRazorpay>((event, emit) async {
      final razorpay = await repo.placeOrderRazorPay(
          event.paymentMethod, event.discount, event.categorydiscount);
      emit(state.copyWith(razorpay: razorpay, isloading: false));
    });
  }
}
