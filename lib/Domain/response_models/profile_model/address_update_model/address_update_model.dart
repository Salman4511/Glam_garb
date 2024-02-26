import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'address_update_model.g.dart';

@JsonSerializable()
class AddressUpdateModel {
  String? message;
  User? user;

  AddressUpdateModel({this.message, this.user});

  factory AddressUpdateModel.fromJson(Map<String, dynamic> json) {
    return _$AddressUpdateModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressUpdateModelToJson(this);
}
