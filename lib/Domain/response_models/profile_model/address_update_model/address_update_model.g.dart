// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressUpdateModel _$AddressUpdateModelFromJson(Map<String, dynamic> json) =>
    AddressUpdateModel(
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressUpdateModelToJson(AddressUpdateModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
