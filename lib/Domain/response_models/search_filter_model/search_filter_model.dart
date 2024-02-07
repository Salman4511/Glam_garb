import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'search_filter_model.g.dart';

@JsonSerializable()
class SearchFilterModel {
  List<Product>? products;

  SearchFilterModel({this.products});

  factory SearchFilterModel.fromJson(Map<String, dynamic> json) {
    return _$SearchFilterModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchFilterModelToJson(this);
}
