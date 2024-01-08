import 'package:dio/dio.dart';
import 'package:glam_garb/Domain/body_models/register_body_model/register_body_model.dart';
import 'package:glam_garb/Domain/response_models/LoginModel/user_login/user_login.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/check_otp/check_otp.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/send_otp/send_otp.dart';
import 'package:glam_garb/Domain/response_models/sign_up_model/user_register/user_register.dart';

class AuthRepo {
  Future<UserLogin> singIn(String email, String password) async {
    UserLogin logiUser = UserLogin(name: "");
    try {
      final response = await Dio().post("http://10.0.2.2:3000/login",
          data: <String, dynamic>{"email": email, "password": password});
      if (response.statusCode == 201 || response.statusCode == 200) {
        print("the response get is oky");
        return UserLogin.fromJson(response.data);
      } else {
        print("the response get is not oky");
        return logiUser;
      }
    } catch (e) {
      print("the response get some error $e");
      return logiUser;
    }
  }

  Future<UserRegister> signUp(String name , String email, int phone, String password )async{
        UserRegister regUser = UserRegister(name: "");

    try {
      final response = await Dio().post("http://10.0.2.2:3000/register",data: <String,dynamic>{"email":email,"name":name,"phone":phone,"password":password});
      if (response.statusCode==201||response.statusCode==200) {
        print('response okk on signupp--->>');
        return UserRegister.fromJson(response.data);
      }
     else if(response.statusCode==309){
      print('email is already used');
      
     }
    } catch (e) {
      print('response get some error on signupp $e');
      
    }
    return regUser;
  }

  Future<SendOtp> sentOtp(String email)async{
    SendOtp otp=SendOtp();
    try {
      final response = await Dio().post("http://10.0.2.2:3000/send-otp",data:<String,dynamic>{"email":email});
      if (response.statusCode==201||response.statusCode==200) {
        print('response is okk otp---->');
        return SendOtp.fromJson(response.data);
      }
    } catch (e) {
      print('error on otp $e');

    }
    return otp;
  }

  

  Future<CheckOtpModel> checkOtp(String recievedOtp)async{
    CheckOtpModel model=CheckOtpModel(message:"");
   try {
     final response = await Dio().post("http://10.0.2.2:3000/verify-otp",data: <String, dynamic>{"otp": recievedOtp} );
     if (response.statusCode==200||response.statusCode==201) {
       print('recieved otp is valid');
       return CheckOtpModel.fromJson(response.data);
     }
   } catch (e) {
    print('error occured on checking otp --> $e');
     
   }
   return model;
  }
}
