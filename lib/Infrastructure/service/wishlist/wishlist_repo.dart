import 'package:dio/dio.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_add_model/wish_list_add_model.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_delete_model/wish_list_delete_model.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_get_model/wish_list_get_model.dart';
import 'package:glam_garb/Domain/response_models/wishlist_model/wish_list_to_bag_model/wish_list_to_bag_model.dart';

class WishListRepo {
  static const String _jwt = "jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTY5NGNhOTk2YWNmMTdjMjcwZTMwMyIsImlhdCI6MTcwNzMxNTk1MiwiZXhwIjoxNzA3NTc1MTUyfQ.PDFb6nReyTGfcLG7b228AT6Ey0OElv3s3_fKIXe94Hw";
  Future<WishListAddModel> addToWishList(String id) async {
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':_jwt
      }));

      final response = await dio.post("http://10.0.2.2:3000/wishlist-add",
          data: <String, dynamic>{"productId": id});

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return WishListAddModel.fromJson(response.data);
      } else {
        throw Exception("Failed to add favorite");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<WishListGetModel> getWishList() async {
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':_jwt
      }));

      final response = await dio.get(
        "http://10.0.2.2:3000/wishlist",
      );

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return WishListGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get favorite");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<WishlistDeleteModel> deleteFromWishList(String id) async {
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':_jwt
      }));

      final response = await dio.get(
          "http://10.0.2.2:3000/wishlist/deleteItem?itemId=$id",
          data: <String, dynamic>{"itemId": id});

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return WishlistDeleteModel.fromJson(response.data);
      } else {
        throw Exception("Failed to delete favorite");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<WishlistToCartModel> addToCart(String id) async {
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':_jwt
      }));

      final response = await dio.get(
          "http://10.0.2.2:3000/wishlist-to-bag?id=$id",
          data: <String, dynamic>{"id": id});

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return WishlistToCartModel.fromJson(response.data);
      } else {
        throw Exception("Failed to move favorite");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
