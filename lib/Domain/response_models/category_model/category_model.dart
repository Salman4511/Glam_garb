import 'package:json_annotation/json_annotation.dart';

import 'brand.dart';
import 'category.dart';
import 'product.dart';
import 'user_data.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  List<Product>? products;
  List<Category>? category;
  List<Brand>? brand;
  List<String>? color;
  List<String>? size;
  int? quantity;
  int? currentPage;
  int? totalPages;
  int? count;
  UserData? userData;
  String? searchQuery;
  String? sortOption;
  dynamic filterBrands;
  dynamic filterCategories;
  dynamic filterColors;
  dynamic filterSizes;

  CategoryModel({
    this.products,
    this.category,
    this.brand,
    this.color,
    this.size,
    this.quantity,
    this.currentPage,
    this.totalPages,
    this.count,
    this.userData,
    this.searchQuery,
    this.sortOption,
    this.filterBrands,
    this.filterCategories,
    this.filterColors,
    this.filterSizes,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return _$CategoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
