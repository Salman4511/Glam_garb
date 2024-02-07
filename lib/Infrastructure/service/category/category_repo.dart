import 'package:dio/dio.dart';
import 'package:glam_garb/Domain/response_models/category_model/category_model.dart';

class CategoryRepo {
  Future<CategoryModel> getAllProducts(String search,List<String> colors,List<String> size,List<String> categories,dynamic brands) async {
    try {
      final dio = Dio();
      
    

      final response =
          await dio.get("http://10.0.2.2:3000/allproducts?search=$search",
          queryParameters: {
        'colors': colors,
        'sizes':size, // Assuming colors is a List<String>sheri
        'categories':categories, // Assuming category is a List<String>sheri
        'brands': brands, // Assuming brand is a List<String>sheri
      }
          );

      if (response.statusCode == 200) {
        print('responsedata---------->${response.data}');
        print(colors);
        print(categories);
        print('response ok');
        return CategoryModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load products");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }

  Future<CategoryModel> getMensProducts(String search,
      List<String> colors,
      List<String> size,
      List<String> categories,
      dynamic brands) async {
    try {
      final dio = Dio();

      final response = await dio.get("http://10.0.2.2:3000/men?search=$search",
       queryParameters: {
        'colors': colors,// Assuming colors is a List<String>sheri
        'categories':categories, // Assuming category is a List<String>sheri
        'brands': brands, // Assuming brand is a List<String>sheri
      }
      );

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

  Future<CategoryModel> getWomensProducts(String search, List<String> colors,
      List<String> size, List<String> categories, dynamic brands) async {
    try {
      final dio = Dio();

      final response =
          await dio.get("http://10.0.2.2:3000/women?search=$search",
          queryParameters: {
        'colors': colors, // Assuming colors is a List<String>sheri
        'categories': categories, // Assuming category is a List<String>sheri
        'brands': brands, // Assuming brand is a List<String>sheri
      });

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
