// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressGetModel _$AddressGetModelFromJson(Map<String, dynamic> json) =>
    AddressGetModel(
      userData: (json['userData'] as List<dynamic>?)
          ?.map((e) => UserDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$AddressGetModelToJson(AddressGetModel instance) =>
    <String, dynamic>{
      'userData': instance.userData,
      'quantity': instance.quantity,
    };
