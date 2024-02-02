import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'wish_list_add_model.g.dart';

@JsonSerializable()
class WishListAddModel {
  String? message;
  User? user;

  WishListAddModel({this.message, this.user});

  factory WishListAddModel.fromJson(Map<String, dynamic> json) {
    return _$WishListAddModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WishListAddModelToJson(this);
}
