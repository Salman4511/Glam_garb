import 'package:dio/dio.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_delete_model/cart_delete_model.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_edit_model/cart_update_quantity_model.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_get_model/cart_get_model.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_to_wishlist_model/cart_to_wishlist_model.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/domain/response_models/check_out_model/check_out_model/check_out_model.dart';

class CartRepo {
  late AuthRepo repo;
  String? authToken;
  late String _jwt;
  late Dio dio;
  CartRepo() {
    _jwt = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    authToken = await repo.getAuthToken();
    _jwt = "jwt=$authToken";

    dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
  }

  Future<CartGetModel> getCart() async {
    if (_jwt.isEmpty) {
      await initialize();
    }

    print('jwt------->$_jwt');
    try {
      final response = await dio.get(
        "https://www.elegancestores.online/cart",
      );

      if (response.statusCode == 200) {
        print('response ok');
        print('jwt---------${_jwt}');
        return CartGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get cart");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CartEditQuantityModel> updateCartQuantity(
      String id, dynamic operation, String size) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.post(
          "https://www.elegancestores.online/cart/updateQuantity",
          data: <String, dynamic>{
            "itemId": id,
            "operation": operation,
            "size": size
          });

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return CartEditQuantityModel.fromJson(response.data);
      } else {
        throw Exception("Failed to update cart");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CartDeleteModel> deleteFromCart(String id) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.get(
        "https://www.elegancestores.online/cart/deleteItem?itemId=$id",
      );

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return CartDeleteModel.fromJson(response.data);
      } else {
        throw Exception("Failed to delete cartitem");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CartToWishListModel> cartToWishlist(String id) async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));

      final response = await dio.get(
          "https://www.elegancestores.online/cart/toWishlist?itemId=$id",
          data: <String, dynamic>{"itemId": id});

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return CartToWishListModel.fromJson(response.data);
      } else {
        throw Exception("Failed to move to  wishlist from bag");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CheckOutModel> checkOut() async {
    if (_jwt.isEmpty) {
      await initialize();
    }
    try {
      // final dio = Dio(BaseOptions(headers: {'Cookie': _jwt}));
      final response = await dio.get(
        "https://www.elegancestores.online/checkout",
      );

      if (response.statusCode == 200) {
        print(response.headers.map['jwt']
            .toString()
            .split(' ')
            .first
            .split('[')
            .last);
        print(response.headers);
        print('response ok');
        return CheckOutModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get cart");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
