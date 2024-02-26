// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckOutModel _$CheckOutModelFromJson(Map<String, dynamic> json) =>
    CheckOutModel(
      productsInCart: (json['productsInCart'] as List<dynamic>?)
          ?.map((e) => ProductsInCart.fromJson(e as Map<String, dynamic>))
          .toList(),
      userData: (json['userData'] as List<dynamic>?)
          ?.map((e) => UserDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
      price: (json['price'] as List<dynamic>?)?.map((e) => e as int).toList(),
      quantityy:
          (json['quantityy'] as List<dynamic>?)?.map((e) => e as int).toList(),
      quantity: json['quantity'] as int?,
      catDiscount: json['catDiscount'] as int?,
    );

Map<String, dynamic> _$CheckOutModelToJson(CheckOutModel instance) =>
    <String, dynamic>{
      'productsInCart': instance.productsInCart,
      'userData': instance.userData,
      'total': instance.total,
      'price': instance.price,
      'quantityy': instance.quantityy,
      'quantity': instance.quantity,
      'catDiscount': instance.catDiscount,
    };
