import 'package:json_annotation/json_annotation.dart';

import 'user_datum.dart';

part 'my_account_model.g.dart';

@JsonSerializable()
class MyAccountModel {
  List<UserDatum>? userData;
  int? quantity;

  MyAccountModel({this.userData, this.quantity});

  factory MyAccountModel.fromJson(Map<String, dynamic> json) {
    return _$MyAccountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MyAccountModelToJson(this);
}
