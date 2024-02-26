// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cancel_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderCancelModel _$OrderCancelModelFromJson(Map<String, dynamic> json) =>
    OrderCancelModel(
      message: json['message'] as String?,
      orderId: json['orderId'] as String?,
    );

Map<String, dynamic> _$OrderCancelModelToJson(OrderCancelModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'orderId': instance.orderId,
    };
