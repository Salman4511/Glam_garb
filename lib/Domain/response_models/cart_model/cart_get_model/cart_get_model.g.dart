// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartGetModel _$CartGetModelFromJson(Map<String, dynamic> json) => CartGetModel(
      productsInCart: (json['productsInCart'] as List<dynamic>?)
          ?.map((e) => ProductsInCart.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: json['userData'] == null
          ? null
          : UserData.fromJson(json['userData'] as Map<String, dynamic>),
      total: json['total'] as int?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$CartGetModelToJson(CartGetModel instance) =>
    <String, dynamic>{
      'productsInCart': instance.productsInCart,
      'userData': instance.userData,
      'total': instance.total,
      'quantity': instance.quantity,
    };
