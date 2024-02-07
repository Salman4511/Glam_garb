// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      brand: (json['brand'] as List<dynamic>?)
          ?.map((e) => Brand.fromJson(e as Map<String, dynamic>))
          .toList(),
      color:
          (json['color'] as List<dynamic>?)?.map((e) => e as String).toList(),
      size: (json['size'] as List<dynamic>?)?.map((e) => e as String).toList(),
      quantity: json['quantity'] as int?,
      currentPage: json['currentPage'] as int?,
      totalPages: json['totalPages'] as int?,
      count: json['count'] as int?,
      userData: json['userData'] == null
          ? null
          : UserData.fromJson(json['userData'] as Map<String, dynamic>),
      searchQuery: json['searchQuery'] as String?,
      sortOption: json['sortOption'] as String?,
      filterBrands: json['filterBrands'],
      filterCategories: json['filterCategories'],
      filterColors: json['filterColors'],
      filterSizes: json['filterSizes'],
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'products': instance.products,
      'category': instance.category,
      'brand': instance.brand,
      'color': instance.color,
      'size': instance.size,
      'quantity': instance.quantity,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'count': instance.count,
      'userData': instance.userData,
      'searchQuery': instance.searchQuery,
      'sortOption': instance.sortOption,
      'filterBrands': instance.filterBrands,
      'filterCategories': instance.filterCategories,
      'filterColors': instance.filterColors,
      'filterSizes': instance.filterSizes,
    };
