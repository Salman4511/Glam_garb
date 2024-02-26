// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyAccountModel _$MyAccountModelFromJson(Map<String, dynamic> json) =>
    MyAccountModel(
      userData: (json['userData'] as List<dynamic>?)
          ?.map((e) => UserDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$MyAccountModelToJson(MyAccountModel instance) =>
    <String, dynamic>{
      'userData': instance.userData,
      'quantity': instance.quantity,
    };
