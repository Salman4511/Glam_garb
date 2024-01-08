part of 'auth_bloc_bloc.dart';


@freezed
@freezed
class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState(
      {required bool isLoading, UserRegister? user,
      UserLogin? loginUser,
      SendOtp? otp,
      CheckOtpModel? verifyOtp
       }) = _AuthBlocState;

  factory AuthBlocState.inital() {
    return const AuthBlocState(
      isLoading: false,);
  }
}
