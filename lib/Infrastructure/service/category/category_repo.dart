import 'package:dio/dio.dart';
import 'package:glam_garb/Domain/response_models/category_model/category_model.dart';

class CategoryRepo {
  Future<CategoryModel> getAllProducts() async {
    try {
      final dio = Dio();

      final response = await dio.get("http://10.0.2.2:3000/allproducts");

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return CategoryModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load products");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CategoryModel> getMensProducts() async {
    try {
      final dio = Dio();

      final response = await dio.get("http://10.0.2.2:3000/men");

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return CategoryModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load products");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CategoryModel> getWomensProducts() async {
    try {
      final dio = Dio();

      final response = await dio.get("http://10.0.2.2:3000/women");

      if (response.statusCode == 200) {
        print(response.data);
        print('response ok');
        return CategoryModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load products");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
