// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['_id'] as String?,
      categoryName: json['categoryName'] as String?,
      active: json['active'] as bool?,
      v: json['__v'] as int?,
      categoryOffer: json['categoryOffer'] as int?,
      expiry: json['expiry'] as String?,
      maxDiscount: json['maxDiscount'] as int?,
      minAmount: json['minAmount'] as int?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      '_id': instance.id,
      'categoryName': instance.categoryName,
      'active': instance.active,
      '__v': instance.v,
      'categoryOffer': instance.categoryOffer,
      'expiry': instance.expiry,
      'maxDiscount': instance.maxDiscount,
      'minAmount': instance.minAmount,
    };
