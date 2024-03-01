import 'package:dio/dio.dart';
import 'package:glam_garb/domain/response_models/banner_model/banner_get_model/banner_get_model.dart';

class BannerRepo {
  Future<BannerGetModel> getBanner() async {
    try {
      final dio = Dio(BaseOptions(
        headers: {
          'Cookie':
              'jwtAdmin=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTZhNDg5YWQxM2Q1YWQ3MTllMjMyOSIsImlhdCI6MTcwOTEwMzU5NiwiZXhwIjoxNzA5MzYyNzk2fQ.Ig_8RlrICadsz671i6fHoeQHYa0g7QxgZa33PQpSDXA',
        },
      ));

      final response = await dio.get("http://10.0.2.2:3000/admin/banner");

      if (response.statusCode == 200) {
        print(response.data);
        return BannerGetModel.fromJson(response.data);
      } else {
        throw Exception("Failed to load brands");
      }
    } catch (error) {
      throw Exception("Error: $error");
    }
  }
}
