import 'package:dio/dio.dart';
import 'package:glam_garb/domain/response_models/banner_model/banner_get_model/banner_get_model.dart';

class BannerRepo {
  Future<BannerGetModel> getBanner() async {
    try {
      final dio = Dio(BaseOptions(
        headers: {
          'Cookie':
              'jwtAdmin=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY1OTZhNDg5YWQxM2Q1YWQ3MTllMjMyOSIsImlhdCI6MTcwODcxMDg4NywiZXhwIjoxNzA4OTcwMDg3fQ.kK9swpIS3qYPyZ3ZgNfVMK503XXyQ_bcrwtgpQmyeEI',
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
