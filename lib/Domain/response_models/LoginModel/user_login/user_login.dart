import 'package:json_annotation/json_annotation.dart';

import 'user_data.dart';

part 'user_login.g.dart';

@JsonSerializable()
class UserLogin {
  UserData? userData;
  String? token;

  UserLogin({this.userData, this.token});

  factory UserLogin.fromJson(Map<String, dynamic> json) {
    return _$UserLoginFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserLoginToJson(this);
}
