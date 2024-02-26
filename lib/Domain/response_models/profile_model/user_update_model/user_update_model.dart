import 'package:json_annotation/json_annotation.dart';

import 'update_data.dart';

part 'user_update_model.g.dart';

@JsonSerializable()
class UserUpdateModel {
  String? message;
  UpdateData? updateData;

  UserUpdateModel({this.message, this.updateData});

  factory UserUpdateModel.fromJson(Map<String, dynamic> json) {
    return _$UserUpdateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserUpdateModelToJson(this);
}
