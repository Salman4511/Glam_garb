import 'package:dio/dio.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/domain/response_models/check_out_model/address_select_model/address_select_model.dart';
import 'package:glam_garb/domain/response_models/check_out_model/cash_on_delivery_model/cash_on_delivery_model.dart';
import 'package:glam_garb/domain/response_models/check_out_model/check_out_model/check_out_model.dart';
import 'package:glam_garb/domain/response_models/check_out_model/coupon_model/coupon_model.dart';
import 'package:glam_garb/domain/response_models/check_out_model/razor_pay_model/razor_pay_model.dart';

class CheckOutRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  CheckOutRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwt=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  // Future<String> getCookie() async {
  //   final response = await Dio().post("http://10.0.2.2:3000/login");
  //   return response.data.map['token'].toString();
  // }

  Future<CheckOutModel> checkOut() async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
      final response = await dio.get(
        "http://10.0.2.2:3000/checkout",
      );

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return CheckOutModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get cart");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<AddressSelectModel> selectAddress(String id) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.post("http://10.0.2.2:3000/selectAddress",
          data: <String, dynamic>{"selectedAddressId": id});

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok on selecting address');
        return AddressSelectModel.fromJson(response.data);
      } else {
        throw Exception("Failed to select adress");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CouponModel> applyCoupon(int total, String couponCode) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.post("http://10.0.2.2:3000/applycoupon",
          data: <String, dynamic>{"total": total, "couponcode": couponCode});

      if (response.statusCode == 200) {
        print('response ok on APPLYCOUPON');
        return CouponModel.fromJson(response.data);
      } else {
        throw Exception("Failed to APPLY COUPON");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CashOnDeliveryModel> placeOrder(
      String paymentMethod, int discount, int categorydiscount) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio
          .post("http://10.0.2.2:3000/orderconfirm", data: <String, dynamic>{
        "paymentMethod": paymentMethod,
        "discount": discount,
        "categorydiscount": categorydiscount
      });

      if (response.statusCode == 200) {
        print('response ok on place order');
        return CashOnDeliveryModel.fromJson(response.data);
      } else {
        throw Exception("Failed to APPLY COUPON");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<RazorPayModel> placeOrderRazorPay(
      String paymentMethod, int discount, int categorydiscount) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio
          .post("http://10.0.2.2:3000/orderconfirm", data: <String, dynamic>{
        "paymentMethod": paymentMethod,
        "discount": discount,
        "categorydiscount": categorydiscount
      });

      if (response.statusCode == 200) {
        print('response ok on place order with razorpay');
        return RazorPayModel.fromJson(response.data);
      } else {
        throw Exception("Failed to APPLY COUPON");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
