// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_get_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletGetModel _$WalletGetModelFromJson(Map<String, dynamic> json) =>
    WalletGetModel(
      userData: (json['userData'] as List<dynamic>?)
          ?.map((e) => UserDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantity: json['quantity'] as int?,
      transaction: json['transaction'] as List<dynamic>?,
    );

Map<String, dynamic> _$WalletGetModelToJson(WalletGetModel instance) =>
    <String, dynamic>{
      'userData': instance.userData,
      'quantity': instance.quantity,
      'transaction': instance.transaction,
    };
