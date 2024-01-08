// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRegister _$UserRegisterFromJson(Map<String, dynamic> json) => UserRegister(
      name: json['Name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as int?,
      password: json['password'] as String?,
      isAdmin: json['is_admin'] as int?,
      isVerified: json['is_verified'] as bool?,
      referralCode: json['referral_code'] as int?,
      referralPurchase: json['referralPurchase'] as bool?,
      createdOn: json['createdOn'] as String?,
      isBlocked: json['is_blocked'] as bool?,
      wallet: json['wallet'] as int?,
      id: json['_id'] as String?,
      wishlist: json['wishlist'] as List<dynamic>?,
      cart: json['cart'] as List<dynamic>?,
      address: json['address'] as List<dynamic>?,
      transactionDetails: json['transactionDetails'] as List<dynamic>?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$UserRegisterToJson(UserRegister instance) =>
    <String, dynamic>{
      'Name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'is_admin': instance.isAdmin,
      'is_verified': instance.isVerified,
      'referral_code': instance.referralCode,
      'referralPurchase': instance.referralPurchase,
      'createdOn': instance.createdOn,
      'is_blocked': instance.isBlocked,
      'wallet': instance.wallet,
      '_id': instance.id,
      'wishlist': instance.wishlist,
      'cart': instance.cart,
      'address': instance.address,
      'transactionDetails': instance.transactionDetails,
      '__v': instance.v,
    };
