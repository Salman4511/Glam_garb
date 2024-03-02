import 'package:dio/dio.dart';
import 'package:glam_garb/Infrastructure/service/auth/auth_repo.dart';
import 'package:glam_garb/domain/response_models/banner_model/banner_get_model/banner_get_model.dart';

class BannerRepo {

  late AuthRepo repo;
  String? adminAuthToken;
  late String _jwtAdmin;
  late Dio dio;
  BannerRepo() {
    _jwtAdmin = "";
    repo = AuthRepo();
    initialize();
  }

  Future<void> initialize() async {
    adminAuthToken = await repo.getAdminAuthToken();
    _jwtAdmin = "jwtAdmin=$adminAuthToken";
    dio = Dio(BaseOptions(headers: {'Cookie':_jwtAdmin}));
  }


    Future<BannerGetModel> getBanner() async {
    if (_jwtAdmin.isEmpty) {
      await initialize();
    }

    print('jwt------->$_jwtAdmin');
    try {
     
    //  final  dio = Dio(BaseOptions(headers: {'Cookie': _jwtAdmin}));
     print('--//$_jwtAdmin');
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
