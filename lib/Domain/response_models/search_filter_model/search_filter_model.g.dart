// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchFilterModel _$SearchFilterModelFromJson(Map<String, dynamic> json) =>
    SearchFilterModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchFilterModelToJson(SearchFilterModel instance) =>
    <String, dynamic>{
      'products': instance.products,
    };
