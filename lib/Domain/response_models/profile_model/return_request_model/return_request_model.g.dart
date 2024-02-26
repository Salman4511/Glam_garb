// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnRequestModel _$ReturnRequestModelFromJson(Map<String, dynamic> json) =>
    ReturnRequestModel(
      message: json['message'] as String?,
      orderId: json['orderId'] as String?,
      updateOrder: json['updateOrder'] == null
          ? null
          : UpdateOrder.fromJson(json['updateOrder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ReturnRequestModelToJson(ReturnRequestModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'orderId': instance.orderId,
      'updateOrder': instance.updateOrder,
    };
