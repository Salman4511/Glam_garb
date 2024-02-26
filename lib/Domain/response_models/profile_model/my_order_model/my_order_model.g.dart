// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyOrderModel _$MyOrderModelFromJson(Map<String, dynamic> json) => MyOrderModel(
      userData: (json['userData'] as List<dynamic>?)
          ?.map((e) => UserDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int?,
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => Order.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
    );

Map<String, dynamic> _$MyOrderModelToJson(MyOrderModel instance) =>
    <String, dynamic>{
      'userData': instance.userData,
      'quantity': instance.quantity,
      'orders': instance.orders,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
    };
