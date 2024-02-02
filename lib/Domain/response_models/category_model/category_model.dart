import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  List<Product>? products;

  CategoryModel({this.products});

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return _$CategoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
