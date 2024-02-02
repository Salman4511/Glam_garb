import 'package:dio/dio.dart';
import 'package:glam_garb/Domain/response_models/LoginModel/user_login/user_login.dart';
import 'package:glam_garb/Domain/response_models/log_out/log_out_model.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/check_otp/check_otp.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/send_otp/send_otp.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/user_register/user_register.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepo {
  static const String AUTH_ID_KEY = 'auth_id';

  String? _authId;

  Future<void> _saveAuthId(String authId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(AUTH_ID_KEY, authId);
    _authId = authId;
  }

  Future<void> _loadAuthId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _authId = prefs.getString(AUTH_ID_KEY);
  }

  Future<void> clearAuthId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(AUTH_ID_KEY);
  }

  Future<UserLogin> singIn(String email, String password) async {
    UserLogin logiUser = UserLogin(name: "");
    try {
      final response = await Dio().post("http://10.0.2.2:3000/login",
          data: <String, dynamic>{"email": email, "password": password});
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        logiUser = UserLogin.fromJson(response.data);
        await _saveAuthId(logiUser.id!);
        return logiUser;
      } else {
        print("the response get is not oky");
        return logiUser;
      }
    } catch (e) {
      print("the response get some error $e");
      return logiUser;
    }
  }

  Future<bool> isAuthenticated() async {
    if (_authId == null) {
      // If authId is not loaded, load it from SharedPreferences
      await _loadAuthId();
    }
    return _authId != null;
  }

  Future<UserRegister> signUp(
      String name, String email, int phone, String password) async {
    UserRegister regUser = UserRegister(name: "");

    try {
      final response = await Dio().post("http://10.0.2.2:3000/register",
          data: <String, dynamic>{
            "email": email,
            "name": name,
            "phone": phone,
            "password": password
          });
      print('the status code returned is----->${response.statusCode}');
      if (response.statusCode == 201 || response.statusCode == 200) {
        print('response okk on signupp--->>');
        regUser = UserRegister.fromJson(response.data);
        await _saveAuthId(regUser.id!);
        print('authid saved');
        return regUser;
      } else if (response.statusCode == 309) {
        print('email is already used');
        return UserRegister.fromJson(response.data);
      } else {
        print('Unexpected status code: ${response.statusCode}');
      }
    } catch (e) {
      print('response get some error on signupp $e');
    }
    return regUser;
  }

  Future<SendOtp> sentOtp(String email) async {
    SendOtp otp = SendOtp();
    try {
      final response = await Dio().post("http://10.0.2.2:3000/send-otp",
          data: <String, dynamic>{"email": email});
      if (response.statusCode == 201 || response.statusCode == 200) {
        print('response is okk otp---->');
        return SendOtp.fromJson(response.data);
      }
    } catch (e) {
      print('error on otp $e');
    }
    return otp;
  }

  Future<CheckOtpModel> checkOtp(String recievedOtp) async {
    CheckOtpModel model = CheckOtpModel(message: "");
    try {
      final response = await Dio().post("http://10.0.2.2:3000/verify-otp",
          data: <String, dynamic>{"otp": recievedOtp});
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('recieved otp is valid');
        return CheckOtpModel.fromJson(response.data);
      }
    } catch (e) {
      print('error occured on checking otp --> $e');
    }
    return model;
  }

  Future<LogoutModel> logOut() async {
    LogoutModel model = LogoutModel(message: "");
    try {
      final response = await Dio().post(
        "http://10.0.2.2:3000/logout",
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        print('User logouted');
        return LogoutModel.fromJson(response.data);
      }
    } catch (e) {
      print('error occured on logout --> $e');
    }
    return model;
  }
}
