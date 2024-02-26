import 'package:json_annotation/json_annotation.dart';

part 'change_password_model.g.dart';

@JsonSerializable()
class ChangePasswordModel {
  String? message;

  ChangePasswordModel({this.message});

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) {
    return _$ChangePasswordModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChangePasswordModelToJson(this);
}
