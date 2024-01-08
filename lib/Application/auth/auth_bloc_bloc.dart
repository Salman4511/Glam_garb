import 'package:bloc/bloc.dart';
import 'package:glam_garb/Domain/body_models/register_body_model/register_body_model.dart';
import 'package:glam_garb/Domain/response_models/LoginModel/user_login/user_login.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/check_otp/check_otp.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/send_otp/send_otp.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/user_register/user_register.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_bloc_bloc.freezed.dart';


part 'auth_bloc_event.dart';
part 'auth_bloc_state.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final AuthRepo repo;
  AuthBloc(this.repo) : super(AuthBlocState.inital()) {
  on<_SignIn>((event, emit) async {
      final loginUser = await repo.singIn(event.email,event.password);
      emit(state.copyWith(loginUser:loginUser ,isLoading: false));
    });
  
  on<_SignUp>((event, emit)async {
    final userRegister= await repo.signUp(event.email,event.name,event.phone,event.password);
    emit(state.copyWith(user: userRegister));
  });

  on<_Otpverification>((event, emit)async{
    final otpVerify=await repo.sentOtp(event.email);
    emit(state.copyWith(otp: otpVerify));
  });
  
  on<_CheckOtp>((event, emit)async {
    final isValidOtp= await repo.checkOtp(event.recievedOtp);
    emit(state.copyWith(verifyOtp: isValidOtp));
  });
  
  }
}
