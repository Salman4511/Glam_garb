// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_add_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishListAddModel _$WishListAddModelFromJson(Map<String, dynamic> json) =>
    WishListAddModel(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WishListAddModelToJson(WishListAddModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
