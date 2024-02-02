// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wish_list_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WishListGetModel _$WishListGetModelFromJson(Map<String, dynamic> json) =>
    WishListGetModel(
      userData: json['userData'] == null
          ? null
          : UserData.fromJson(json['userData'] as Map<String, dynamic>),
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$WishListGetModelToJson(WishListGetModel instance) =>
    <String, dynamic>{
      'userData': instance.userData,
      'products': instance.products,
      'quantity': instance.quantity,
    };
