import 'package:dio/dio.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_delete_model/cart_delete_model.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_edit_model/cart_update_quantity_model.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_get_model/cart_get_model.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_to_wishlist_model/cart_to_wishlist_model.dart';

class CartRepo {
    static const String _jwt = "jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTY5NGNhOTk2YWNmMTdjMjcwZTMwMyIsImlhdCI6MTcwNzMxNTk1MiwiZXhwIjoxNzA3NTc1MTUyfQ.PDFb6nReyTGfcLG7b228AT6Ey0OElv3s3_fKIXe94Hw";
  Future<String> getCookie() async {
    final response = await Dio().get("http://10.0.2.2:3000/cart");
    return response.headers.map['jwt']
        .toString()
        .split(' ')
        .first
        .split('[')
        .last;
  }

  Future<CartGetModel> getCart() async {
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':_jwt
      }));
      final response = await dio.get(
        "http://10.0.2.2:3000/cart",
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
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':_jwt
      }));

      final response = await dio.post(
          "http://10.0.2.2:3000/cart/updateQuantity",
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
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':_jwt
      }));

      final response = await dio.get(
        "http://10.0.2.2:3000/cart/deleteItem?itemId=$id",
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
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':_jwt
      }));

      final response = await dio.get(
          "http://10.0.2.2:3000/cart/toWishlist?itemId=$id",
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
}
