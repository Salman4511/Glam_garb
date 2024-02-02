part of 'auth_bloc_bloc.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const factory AuthBlocEvent() = _AuthBlocEvent;

  factory AuthBlocEvent.signUp(
      String email, String name, int phone, String password) = _SignUp;

  factory AuthBlocEvent.signIn(String email, String password) = _SignIn;

  factory AuthBlocEvent.otpverification(String email) = _Otpverification;

  factory AuthBlocEvent.checkOtp(String recievedOtp) = _CheckOtp;

  factory AuthBlocEvent.logOut() = _LogOut;
}
