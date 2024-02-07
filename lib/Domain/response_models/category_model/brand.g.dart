// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Brand _$BrandFromJson(Map<String, dynamic> json) => Brand(
      id: json['_id'] as String?,
      brandName: json['brandName'] as String?,
      image: json['image'] as String?,
      active: json['active'] as bool?,
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$BrandToJson(Brand instance) => <String, dynamic>{
      '_id': instance.id,
      'brandName': instance.brandName,
      'image': instance.image,
      'active': instance.active,
      '__v': instance.v,
    };
