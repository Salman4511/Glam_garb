import 'package:dio/dio.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/domain/response_models/profile_model/address_delete_model/address_delete_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/address_get_model/address_get_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/address_update_model/address_update_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/adress_add_model/adress_add_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/change_password_model/change_password_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/coupon_get_model/coupon_get_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/my_account_model/my_account_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/my_order_model/my_order_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/order_cancel_model/order_cancel_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/return_request_model/return_request_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/user_update_model/user_update_model.dart';
import 'package:glam_garb/domain/response_models/profile_model/wallet_get_model/wallet_get_model.dart';

class ProfileRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  ProfileRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwt=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  Future<AdressAddModel> addAddress(String name, String houseName, int phone,
      String city, String area, String state, int pinCode) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.post(
          "http://10.0.2.2:3000/checkout/add-address",
          data: <String, dynamic>{
            "adname": name,
            "admobile": phone,
            "adhname": houseName,
            "adarea": area,
            "adcity": city,
            "adstate": state,
            "adpin": pinCode
          });

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok on adding address');
        return AdressAddModel.fromJson(response.data);
      } else {
        throw Exception("Failed to add favorite");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<MyAccountModel> userDetails() async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
      final response = await dio.get(
        "http://10.0.2.2:3000/my/profile",
      );

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return MyAccountModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get cart");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<UserUpdateModel> updateUser(String name, dynamic mobile) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.post("http://10.0.2.2:3000/profile/updateData",
          data: <String, dynamic>{
            "profilename": name,
            "profilemobile": mobile,
          });

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok on update user');
        return UserUpdateModel.fromJson(response.data);
      } else {
        throw Exception("Failed to update user");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<AddressGetModel> getAddress() async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.get("http://10.0.2.2:3000/my/address");

      if (response.statusCode == 200) {
        print('response ok on get address');
        return AddressGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get adress");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<AddressUpdateModel> updateAddress(
      String id,
      String name,
      String houseName,
      int phone,
      String city,
      String area,
      String state,
      int pinCode) async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio
          .post("http://10.0.2.2:3000/editAddress", data: <String, dynamic>{
        "addressId": id,
        "adname": name,
        "admobile": phone,
        "adhname": houseName,
        "adarea": area,
        "adcity": city,
        "adstate": state,
        "adpin": pinCode
      });

      if (response.statusCode == 200) {
        print('response ok on updating address');
        return AddressUpdateModel.fromJson(response.data);
      } else {
        throw Exception("Failed to update");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<AddressDeleteModel> delAddress(String id) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response =
          await dio.get("http://10.0.2.2:3000/deleteAddress?addressid=$id");

      if (response.statusCode == 200) {
        print('response ok on delete address');
        return AddressDeleteModel.fromJson(response.data);
      } else {
        throw Exception("Failed to delete adress");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<MyOrderModel> getOrders() async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.get("http://10.0.2.2:3000/my/orders");

      if (response.statusCode == 200) {
        print('response ok on get orders');
        return MyOrderModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get orders");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<OrderCancelModel> cancelOrders(String orderId) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response =
          await dio.get("http://10.0.2.2:3000/cancel-order?orderId=$orderId");

      if (response.statusCode == 200) {
        print('response ok on cancel orders');
        return OrderCancelModel.fromJson(response.data);
      } else {
        throw Exception("Failed to cancel orders");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<WalletGetModel> wallet() async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.get("http://10.0.2.2:3000/my/wallet");

      if (response.statusCode == 200) {
        print('response ok on get wallet');
        return WalletGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get wallet");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CouponGetModel> coupons() async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.get("http://10.0.2.2:3000/my/coupons");

      if (response.statusCode == 200) {
        print('response ok on get coupons');
        return CouponGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get coupons");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<ChangePasswordModel> changePwd(String newPassword) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.post("http://10.0.2.2:3000/profile/change-pwd",
          data: <String, dynamic>{
            "upassword": newPassword,
          });

      if (response.statusCode == 200) {
        print('response ok on change password');
        return ChangePasswordModel.fromJson(response.data);
      } else {
        throw Exception("Failed to change password");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<ReturnRequestModel> requestReturn(String orderId, String reason) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response =
          await dio.post("http://10.0.2.2:3000/requestReturn",
          data: <String, dynamic>{
        "orderId": orderId,
        "returnReason":reason
      }
          );

      if (response.statusCode == 200) {
        print('response ok on return orders');
        return ReturnRequestModel.fromJson(response.data);
      } else {
        throw Exception("Failed to return orders");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

}
