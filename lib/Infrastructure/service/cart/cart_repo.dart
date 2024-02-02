import 'package:dio/dio.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_edit_model/cart_update_quantity_model.dart';
import 'package:glam_garb/Domain/response_models/cart_model/cart_get_model/cart_get_model.dart';

class CartRepo{

Future<CartGetModel> getCart() async {
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':
            'connect.sid=s%3A300JH90wbeC-vmRk5HSJG_owgYKDqg3V.ilOA9v7K0E0wFt9f5z77iX7qkdWKDdxI6hgTMo2XWLI; jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTY5NGNhOTk2YWNmMTdjMjcwZTMwMyIsImlhdCI6MTcwNjc3NjYwOCwiZXhwIjoxNzA3MDM1ODA4fQ.Js_kSuXcQbB71qsLyfxX79duw2PUaGBJCx2StdtiNbw'
      }));

      final response = await dio.get(
        "http://10.0.2.2:3000/cart",
      );

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return CartGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to get cart");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

Future<CartEditQuantityModel> updateCartQuantity(String id ,dynamic operation, String size) async {
    try {
      final dio = Dio(BaseOptions(headers: {
        'Cookie':
            'connect.sid=s%3A300JH90wbeC-vmRk5HSJG_owgYKDqg3V.ilOA9v7K0E0wFt9f5z77iX7qkdWKDdxI6hgTMo2XWLI; jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTY5NGNhOTk2YWNmMTdjMjcwZTMwMyIsImlhdCI6MTcwNjc3NjYwOCwiZXhwIjoxNzA3MDM1ODA4fQ.Js_kSuXcQbB71qsLyfxX79duw2PUaGBJCx2StdtiNbw'
      }));

      final response = await dio.post(
        "http://10.0.2.2:3000/cart/updateQuantity",
        data: <String,dynamic>{
          "itemId":id,
          "operation":operation,
          "size":size
        }
      );

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


}